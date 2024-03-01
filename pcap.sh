#!/bin/sh
# call this script as
# pcap.sh <container-name> <interface-name>
# example: pcap.sh clab-srv6-R01-IXR eth12

sudo ip netns exec $1 tcpdump -nni $2 -w $1-$2.pcap