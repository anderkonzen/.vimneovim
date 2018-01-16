#!/bin/bash

all_nics=$(ifconfig 2>/dev/null | awk -F':' '/^[a-z]/ && !/^lo|docker/ { print $1 }')
for nic in ${all_nics[@]}; do
  ipv4s_on_nic=$(ifconfig ${nic} 2>/dev/null | awk '$1 == "inet" { print $2 }' | cut -f2 -d:)
  for lan_ip in ${ipv4s_on_nic[@]}; do
    [[ -n "${lan_ip}" ]] && break
  done
  [[ -n "${lan_ip}" ]] && break
done
echo "${lan_ip-N/A}"
