# mining-eth-linux
A small collection of the script files used to run eth mining on linux.

I used to run a rig of three AMD cards, and the scripts are built for this specific configuration:
 * 0: RX 460 Sapphire - ~11 Mh/s
 * 1: R9 380 Sapphire - ~19 Mh/s
 * 2: R9 380 Sapphire - ~19 Mh/s

The linux machine is running an Ubuntu 16.10 distribution with AMD pro drivers v17.30 and ADL SDK v10.2.

Please be aware that the scripts need to be configured in case you want to use them on a different mining rig.
I'm planning to move all configuration into an external config file and to implement a sort of auto-sensing for the cards configuration.

I used the rig to mine both ETH and ETC, mostly in dual mode with DCR and SIA.
Please notice that ETH will switch from PoW to PoS soon. For the time being it's still fun and profitable to mine ETC and support this network too.

Folders that I included in this project:
- /home/user represents my $HOME folder, where most of the scripts reside;
- /etc/init.d is the daemon scripts folder, where I placed the "mining" script that starts the mining activity at boot time. It can be started by the command "sudo start service mining".

After trying several eth miners (ccminer, sgminer, ethminer, genoils) I sticked to the Claymore Dual miner.
Other than offering dual coin mining capabilities, it provides the possibiliy to run a reload/restart script in case a GPU hangs.
This is really useful to increase reliability and uptime for the mining rig.

Claymore miner also provides an automatic fan speed adjustment based on some configuration properties that can be set.

$HOME/git should contain the git clones listed in the /home/user/install-miner.sh file. 
The scripts use only few of those git projects but I didn't clean that list yet.

Please be aware that the setup script /home/user/install-miner.sh is still incomplete.
I'm planning to add Monero and Zcash miners in the mine-pool.sh script.

Tools that I use to control gpu/mem frequencies and fan speeds are
* amdcovc
* ROC-smi
* ohgodatool

Before I switched to AMD cards I was able to get the miner to detect a (oooold) nVidia card, but it resulted to be too old to mine ETH successfully.
If you're interested about how I did setup CUDA for nVidia feel free to contact me and I'll give you any information I learnt.

Please consider that this is amateur work done during my free time.
If you like this project and you want to support it by donating, any amount is really appreciated! :)
I'm adding addresses below:
* Donations in BTC: 1MzTsPeVFTWkCLstKqoUfUXCY91ibpeqYS
* Donations in ETH: 0x4d39fad075175617d886e49c0205fc82c5c846ec
* Donations in ETC: 0xb08f28e3275464025c378d45c208d84e5d2de695
* Donations in SIA: a95b1ffca3892b80987bfa8afc4cbc54890404f2bd3ef5505ade96a8bd13fdc17078ff9c0780
* Donations in VTC: Vh9gXGMZE5UC6RjoU85d1Xg4JpTzi7ycw9
