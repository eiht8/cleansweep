# cleansweep
Clean Sweep is a bash script that runs a ping sweep across a /24 subnet with parallel threads. For each active IP discovered, an nmap scan will run for that IP

To run Clean Sweep, you need to install the shell tool "parralel". To install parallel on a debian linux distribution, run `sudo apt install parallel`

To run the script, enter the command `./cleansweep.sh 192.168.1`
