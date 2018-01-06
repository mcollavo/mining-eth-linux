# mining-eth-linux
A small collection of the script files used to run eth mining on linux

I used to run a rig of three AMD cards:
 * 0: RX 460 Sapphire - 11 Mh/s
 * 1: R9 380 Sapphire - 19 Mh/s
 * 2: R9 380 Sapphire - 19 Mh/s

/home/user represents the $HOME folder
/etc/init.d is the daemon scripts folder, it contains the "mining" script that starts the mining activity

$HOME/git should contain the git clones listed in the /home/user/install-miner.sh file. 
The scripts use only few of those git projects but I didn't clean that list yet.

After trying several eth miners I sticked to Claymore Dual miner. 
Othe than offering dual coin mining capabilities, it provides the possibiliy to run a reload/restart script in case a GPU hangs.
This helps to increase reliability and uptime for the mining rig.
