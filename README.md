# cleansweep
Clean Sweep is a bash script that runs a ping sweep across a subnet in parallel. An nmap scan runs against each active IP.

To run Clean Sweep, you need to install the shell tool "parralel". To install parallel on a debian linux distribution, run `sudo apt install parallel`

To run the script, enter the command `./cleansweep.sh 192.168.1`

For a /16 or other subnets, enter the command `./cleansweep.sh 192.168`
