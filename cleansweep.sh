#!/bin/bash

cat << "EOF"



    _____                      ____  
   /  __ \ |                  /  ___
   | /  \/ | ___  __ _ _ __   \ `--.__      _____  ___   __
   | |   | |/ _ \/ _` | '_ \   `--. \ \ /\ / / _ \/ _ \ '_ \
   | \__/\ |  __/ (_| | | | | /\__/ /\ V  V /  __/  __/ |_) |
    \____/_|\___|\__,_|_| |_| \____/  \_/\_/ \___|\___| .__/
                                                        | |
                                                        |_|




EOF

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 [subnet]"
  exit 1
fi

subnet="$1"

echo "[+] Scanning subnet $subnet.0/24"
cat << "EOF"

EOF

# Ping sweep
active_ips=$(parallel -j0 "ping -c 1 -W 2 {} >/dev/null && echo {}" ::: "$subnet".{1..254} 2>/dev/null)

# Run nmap for each active IP
if [ -n "$active_ips" ]; then
  echo "[+] The following IPs are up:"
  echo "$active_ips" | xargs -I {} echo {}
 cat << "EOF" 

EOF

  echo -e "[+] Running nmap scan on active IPs"

  echo "$active_ips" | xargs -I {} sh -c "nmap -sC -sV -Pn {}"
else
  echo "[+] No active IPs found."
fi

echo "Scan complete."
cat << "EOF"

EOF
