#!/bin/sh

cd ~/Downloads
sudo cp -f /etc/hosts /etc/hosts.bak
# wget https://hosts.gitcdn.top/hosts.txt
# sudo cp -f ~/Downloads/hosts.txt /etc/hosts
# sudo killall -HUP mDNSResponder

# from https://ping.chinaz.com/github.com
echo '140.82.121.3	github.com\n140.82.121.4	github.com' > hosts.txt
sudo cp -f hosts.txt /etc/hosts
sudo killall -HUP mDNSResponder
cat /etc/hosts