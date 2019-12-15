# Linux

How can I get the IP addres of the etho interface using `ip` and `jq`.

```
ip -j addr show dev eth0 | jq -r '.[0].addr_info | map(select(.family == "inet"))[0].local'
```
