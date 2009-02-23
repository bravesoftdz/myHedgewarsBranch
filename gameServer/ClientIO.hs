{-# LANGUAGE PatternSignatures #-}
module ClientIO where

import qualified Control.Exception
import Control.Concurrent.Chan
import Control.Monad
import System.IO
----------------
import CoreTypes

listenLoop :: Handle -> [String] -> Chan CoreMessage -> Int -> IO ()
listenLoop handle buf chan clientID = do
	str <- hGetLine handle
	if str == "" then do
		writeChan chan $ ClientMessage (clientID, buf)
		listenLoop handle [] chan clientID
		else
		listenLoop handle (buf ++ [str]) chan clientID

clientRecvLoop :: Handle -> Chan CoreMessage -> Int -> IO ()
clientRecvLoop handle chan clientID =
	listenLoop handle [] chan clientID
		`catch` (\e -> (clientOff $ show e) >> return ())
	where clientOff msg = writeChan chan $ ClientMessage (clientID, ["QUIT", msg]) -- if the client disconnects, we perform as if it sent QUIT message

clientSendLoop :: Handle -> Chan CoreMessage -> Chan [String] -> Int -> IO()
clientSendLoop handle coreChan chan clientID = do
	answer <- readChan chan
	doClose <- Control.Exception.handle
		(\(e :: Control.Exception.Exception) -> if isQuit answer then return True else sendQuit e >> return False) $ do
		forM_ answer (\str -> hPutStrLn handle str)
		hPutStrLn handle ""
		hFlush handle
		return $ isQuit answer

	if doClose then
		Control.Exception.handle (\(_ :: Control.Exception.Exception) -> putStrLn "error on hClose") $ hClose handle
		else
		clientSendLoop handle coreChan chan clientID

	where
		sendQuit e = writeChan coreChan $ ClientMessage (clientID, ["QUIT", show e])
		isQuit answer = head answer == "BYE"