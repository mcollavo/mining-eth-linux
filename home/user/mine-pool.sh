#!/bin/bash
#export GPU_FORCE_64BIT_PTR=0
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100
#
#
# Working configuration
export TERM=xterm

export FARM_RECHECK_MS=1000
export EMAIL=marrior@gmail.com
export WEBLOGIN=marrior
export WORKER=senna
export ETH_ADDRESS=0x4d39fad075175617d886e49c0205fc82c5c846ec
export ETC_ADDRESS=0xb08f28e3275464025c378d45c208d84e5d2de695
export SIA_ADDRESS=a95b1ffca3892b80987bfa8afc4cbc54890404f2bd3ef5505ade96a8bd13fdc17078ff9c0780
export ZEC_ADDRESS=t1UEmefxwh42TV2czvUPeNVGAyn2VX2QY3D
export BTC_ADDRESS_NICEHASH=35uChSw9ZtuGwBJp2NEz1tAy1Rv3RikndV
export VTC_ADDRESS=Vh9gXGMZE5UC6RjoU85d1Xg4JpTzi7ycw9
export USERHOME=/home/mcollavo


###*** ETH MODE ***
export ETHMODE=0
###*** ETH MODE ***
export ETHT=150
export ETHI=10
export FANMIN=41
export POWLIM="-5"
export TTARGET=65
export TTLESSI=72
# Start mining

echo "mining with option: $1"
echo "mining with ETHMODE: $ETHMODE"
#exit 0

case "$1" in
 'claymore-sia')
  # ALTCOIN SIA
  sleep 1
  screen -dmS mining ${USERHOME}/git/Claymore-Dual-Miner/ethdcrminer64 \
   -dbg 1 \
   -asm 2 \
   -tt ${TTARGET} \
   -ttli ${TTLESSI} \
   -allpools 1 \
   -allcoins 1 \
   -fanmin $FANMIN \
   -eres 5 \
   -ethi $ETHI \
   -etht $ETHT \
   -gser 0 \
   -wd 1 \
   -r 1  \
   -ftime 1 \
   -mode $ETHMODE \
   -dcrt 2 \
   -dcri 13 \
   -dpsw x \
   -dcoin sc \
   -dpool stratum+tcp://sia-eu2.nanopool.org:7777 \
   -dwal ${SIA_ADDRESS}/${WORKER}/marrior@gmail.com
  ;;
 'claymore-pasc')
  # ALTCOIN PASCAL
  exit 1
  sleep 1
  screen -dmS mining ${USERHOME}/git/Claymore-Dual-Miner/ethdcrminer64 \
   -dbg 1 \
   -asm 2 \
   -tt ${TTARGET} \
   -ttli ${TTLESSI} \
   -allpools 1 \
   -allcoins 1 \
   -fanmin $FANMIN \
   -eres 5 \
   -ethi $ETHI \
   -etht $ETHT \
   -gser 0 \
   -wd 1 \
   -r 1  \
   -ftime 1 \
   -mode $ETHMODE \
   -dcrt 2 \
   -dcri 13 \
   -dpsw x \
   -dcoin pasc \
   -dpool stratum+tcp://pasc-eu1.nanopool.org:15555 \
   -dwal YOUR_PASC_ADDRESS.YOUR_PAYMENTID.YOUR_WORKER_NAME/YOUR_EMAIL
  ;;
 'claymore-dcr')
  # ALTCOIN DECRED
  sleep 1
  screen -dmS mining ${USERHOME}/git/Claymore-Dual-Miner/ethdcrminer64 \
   -dbg 1 \
   -asm 2 \
   -tt ${TTARGET} \
   -ttli ${TTLESSI} \
   -allpools 1 \
   -allcoins 1 \
   -fanmin $FANMIN \
   -powlim $POWLIM \
   -eres 5 \
   -ethi $ETHI \
   -etht $ETHT \
   -gser 0 \
   -wd 1 \
   -r 1  \
   -ftime 2 \
   -mode $ETHMODE \
   -dcrt 1 \
   -dcri 16 \
   -mport -3332
   #-dpool stratum+tcp://dcr.suprnova.cc:3252 -dwal marrior.${WORKER}
   #-dpool stratum+tcp://decred.eu.nicehash.com:3354 -dwal marrior.${WORKER}
   #-dwal DsoQMG7Cj2NSTmbq4vYydErypAm5sTPjvcu.${WORKER}/marrior@gmail.com
  ;;
 'claymore-lbc')
  # ALTCOIN LBRY
  sleep 1
  screen -dmS mining ${USERHOME}/git/Claymore-Dual-Miner/ethdcrminer64 \
   -dbg 1 \
   -asm 2 \
   -tt ${TTARGET} \
   -ttli ${TTLESSI} \
   -allpools 1 \
   -allcoins 1 \
   -fanmin $FANMIN \
   -eres 5 \
   -ethi $ETHI \
   -etht $ETHT \
   -gser 0 \
   -wd 1 \
   -r 1  \
   -ftime 1 \
   -mode $ETHMODE \
   -dcrt 2 \
   -dcri 13 \
   -dpsw x \
   -dcoin lbc \
   -dpool dcr.suprnova.cc:3252 \
   -dwal DsY88EXWQPyUsa51kyJSDjQe3rTtYpNfN9J.senna
  ;;
 'nicehash-eth')
   screen -dmS mining ${USERHOME}/git/Claymore-Dual-Miner/ethdcrminer64 \
    -allpools 1 \
    -estale 0 \
    -epsw x \
    -esm 3 \
    -epool stratum+tcp://daggerhashimoto.eu.nicehash.com:3353 \
    -ewal ${BTC_ADDRESS_NICEHASH}.${WORKER} \
    -dpool stratum+tcp://decred.eu.nicehash.com:3354 \
    -dwal ${BTC_ADDRESS_NICEHASH}.${WORKER}
  ;;
 'nicehash-scrypt')
   screen -dmS mining ${USERHOME}/git/sgminer/sgminer \
   -o stratum+tcp://scrypt.eu.nicehash.com:3333 \
   -u ${BTC_ADDRESS_NICEHASH}.${WORKER} \
   -p p=0.5;d=1024;f0=1;c0=0.5
  ;;
 'claymore-zcash')
   #exit 1
   screen -dmS mining ${USERHOME}/git/ClaymoreZECMiner/zecminer64 \
   -zpool ssl://zec-eu1.nanopool.org:6633 \
   -zwal ${ZEC_ADDRESS}.${WORKER}/marrior@gmail.com \
   -zpsw z \
   -ftime 1
  ;;
 'vertcoin')
   echo "this is $1 !"
   screen -dmS mining ${USERHOME}/git/sgminer/sgminer \
   --auto-fan \
   #-g 2 -w 64 \
   #-o stratum+tcp://pool.verters.com:4444 \
   #-u ${WEBLOGIN}.${WORKER} \
   #-p x \
   #--algorithm Lyra2REV2 \
   --intensity 25
   #screen -L -O -Q -s /bin/bash -dmS mining ${USERHOME}/git/sgminer/sgminer -o stratum+tcp://pool.verters.com:4444 -u ${WEBLOGIN}.${WORKER} -p x --algorithm Lyra2REV2 --intensity d &
   echo "sgminer started"
   #echo "screen -dmS mining ${USERHOME}/git/sgminer/sgminer -o stratum+tcp://pool.verters.com:4444 -u ${WEBLOGIN}.${WORKER} -p x --algorithm Lyra2REV2"
  ;;
 'monero')
   #--shaders 1024,2048,2048 \
  ;;
 *)
  ;;
esac


set_power() {
  export gid=$1
  export maxpw=$2
  export tdp=$3
  /home/mcollavo/git/ohgodatool/ohgodatool -i `echo $gid` --set-max-power `echo $maxpw` --set-tdp `echo $tdp`
  if [ "$4" = "od" ] ; then
    /home/mcollavo/git/amdcovc/amdcovc coreod:$1=$5 memod:$1=$6
  elif [ "$4" = "clk" ] ; then
    /home/mcollavo/git/amdcovc/amdcovc coreclk:$1=$5 memclk:$1=$6
  fi
}


if [ 0 -eq 0 ] ; then
  sleep 40

  screen -S mining -p 0 -X stuff "012"
  sleep 1


  set_power 0 52 46 od 0 0
  set_power 1 158 147 clk 970 1500
  set_power 2 158 147 clk 900 1500

  # Overdrive RX 460 (gpu 0)
  #export COREOD=3
  #export MEMOD=6
  #export FANLEVEL=170
  #sudo /home/mcollavo/git/amdcovc/amdcovc coreod:1:0=${COREOD} memod:1:0=${MEMOD}
  #sudo /home/mcollavo/git/ROC-smi/rocm-smi --setfan ${FANLEVEL}
  ${USERHOME}/git/amdcovc/amdcovc coreod:0=0 memod:0=0
  ${USERHOME}/git/amdcovc/amdcovc coreclk:1=940 memclk:1=1500
  ${USERHOME}/git/amdcovc/amdcovc coreclk:2=970 memclk:2=1500

  sleep 2
  screen -S mining -p 0 -X stuff "012"
  if [ $ETHMODE -eq 0 ] ; then
    sleep 1
    screen -S mining -p 0 -X stuff "012"
  fi
fi
