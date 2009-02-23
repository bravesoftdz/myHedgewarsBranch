{-# LANGUAGE PatternSignatures #-}
module NetRoutines where

import Network
import Network.Socket
import System.IO
import Control.Concurrent
import Control.Concurrent.Chan
import Control.Concurrent.STM
import Control.Exception
import Data.Time
-----------------------------
import CoreTypes
import ClientIO

sockAddr2String :: SockAddr -> IO String
sockAddr2String (SockAddrInet _ hostAddr) = inet_ntoa hostAddr
sockAddr2String (SockAddrInet6 _ _ (a, b, c, d) _) = return (foldr1 (\a b -> a ++ ":" ++ b) [show a, show b, show c, show d])

acceptLoop :: Socket -> Chan CoreMessage -> Int -> IO ()
acceptLoop servSock coreChan clientCounter = do
	Control.Exception.handle
		(\(_ :: Exception) -> putStrLn "exception on connect") $
		do
		(socket, sockAddr) <- Network.Socket.accept servSock

		cHandle <- socketToHandle socket ReadWriteMode
		hSetBuffering cHandle LineBuffering
		clientHost <- sockAddr2String sockAddr

		currentTime <- getCurrentTime
		putStrLn $ (show currentTime) ++ " new client id: " ++ (show nextID)
		
		sendChan <- newChan

		let newClient =
				(ClientInfo
					nextID
					sendChan
					cHandle
					clientHost
					--currentTime
					""
					0
					0
					False
					False
					False
					False)

		writeChan coreChan $ Accept newClient

		forkIO $ clientRecvLoop cHandle coreChan nextID
		forkIO $ clientSendLoop cHandle coreChan sendChan nextID
		return ()

	yield -- hm?
	acceptLoop servSock coreChan nextID
	where
		nextID = clientCounter + 1