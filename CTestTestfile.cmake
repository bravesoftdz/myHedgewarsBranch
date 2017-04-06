# CMake generated Testfile for 
# Source directory: /home/tomek/hg/hedgewars/myHedgewarsBranch
# Build directory: /home/tomek/hg/hedgewars/myHedgewarsBranch
# 
# This file includes the relevent testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(drillrockets_boom.lua "bin/hwengine" "--prefix" "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data" "--nosound" "--nomusic" "--stats-only" "--lua-test" "/home/tomek/hg/hedgewars/myHedgewarsBranch/tests/lua/drillrockets_boom.lua")
ADD_TEST(drillrockets_drill.lua "bin/hwengine" "--prefix" "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data" "--nosound" "--nomusic" "--stats-only" "--lua-test" "/home/tomek/hg/hedgewars/myHedgewarsBranch/tests/lua/drillrockets_drill.lua")
ADD_TEST(twothousandmines.lua "bin/hwengine" "--prefix" "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data" "--nosound" "--nomusic" "--stats-only" "--lua-test" "/home/tomek/hg/hedgewars/myHedgewarsBranch/tests/lua/twothousandmines.lua")
ADD_TEST(hellfire_burns.lua "bin/hwengine" "--prefix" "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data" "--nosound" "--nomusic" "--stats-only" "--lua-test" "/home/tomek/hg/hedgewars/myHedgewarsBranch/tests/lua/hellfire_burns.lua")
ADD_TEST(luaAPI/zoom_get_set.lua "bin/hwengine" "--prefix" "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data" "--nosound" "--nomusic" "--stats-only" "--lua-test" "/home/tomek/hg/hedgewars/myHedgewarsBranch/tests/lua/luaAPI/zoom_get_set.lua")
ADD_TEST(luaAPI/gravity_get_set.lua "bin/hwengine" "--prefix" "/home/tomek/hg/hedgewars/myHedgewarsBranch/share/hedgewars/Data" "--nosound" "--nomusic" "--stats-only" "--lua-test" "/home/tomek/hg/hedgewars/myHedgewarsBranch/tests/lua/luaAPI/gravity_get_set.lua")
SUBDIRS(misc/libphyslayer)
SUBDIRS(hedgewars)
SUBDIRS(QTfrontend)
SUBDIRS(share)
SUBDIRS(bin)
SUBDIRS(tools)
