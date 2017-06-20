#!/bin/bash
cd fischer/fischer_4_5sat
sh doit.sh
cd ../fischer_4_5p1
sh doit.sh
cd ../..

cd krca/krca2
sh doit.sh
cd ../krca3
sh doit.sh
cd ../..

cd sdserver/sdserverl3/sdserverl3satMB50
sh doit.sh
cd ../sdserverl3p1MB60
sh doit.sh
cd ../sdserverl3p1MB90
sh doit.sh
cd ../sdserverl3p1MB120
sh doit.sh
cd ../../..

cd sdserver/sdserverl2/sdserverl2satMB50
sh doit.sh
cd ../sdserverl2p1MB60
sh doit.sh
cd ../sdserverl2p1MB90
sh doit.sh
cd ../sdserverl2p1MB120
sh doit.sh
cd ../../..


#sh next.sh
