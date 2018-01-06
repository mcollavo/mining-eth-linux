#/bin/bash

export HOMEUSER=/home/mcollavo

clone() {
	export URL_PATH=$1
	git clone ${URL_PATH}
}

cd $HOMEUSER
mkdir -p git
cd git

clone https://github.com/matszpk/amdcovc.git
clone https://github.com/ystarnaud/amdmeminfo/
clone git://people.freedesktop.org/~mhopf/AtomDis
clone https://github.com/tpruvot/ccminer.git
clone https://github.com/tsiv/ccminer-cryptonight.git
clone https://github.com/nanopool/Claymore-Dual-Miner.git
clone https://github.com/nanopool/Claymore-XMR-Miner
clone https://github.com/nanopool/ClaymoreZECMiner
clone https://github.com/Genoil/cpp-ethereum.git
clone https://github.com/rumatoest/dwarfing.git
clone https://github.com/ethereum-mining/ethminer.git
clone https://github.com/ethereum-mining/ethminer.git
clone https://github.com/nicehash/excavator
clone https://github.com/mcollavo/mining-eth-linux
clone https://github.com/nanopool/nheqminer-djezo
clone https://pkgs.rpmfusion.org/git/nonfree/nvidia-340xx-kmod.git
clone https://github.com/epixoip/od6config.git
clone https://github.com/ohgodacompany/ohgodatool
clone https://github.com/nicehash/sgminer
clone https://github.com/akheron/jansson.git
clone https://github.com/vertcoin/p2pool-vtc.git
clone https://github.com/metalicjames/lyra2re-hash-python
clone https://github.com/PascalCoin/PascalCoin
clone https://github.com/jaschaknack/PolarisBiosEditor.git
clone https://github.com/RadeonOpenCompute/ROC-smi.git
clone https://github.com/nicehash/sgminer.git
clone https://github.com/akheron/jansson.git
clone https://github.com/nicehash/sgminer-gm
clone https://github.com/akheron/jansson.git
clone https://github.com/NebulousLabs/Sia
clone https://github.com/Storj/storjshare-daemon.git
clone https://github.com/vertcoin/vertcoin.git
clone https://github.com/fireice-uk/xmr-stak-amd
