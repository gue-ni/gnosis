# Linux

| Command       | What does it do?         |
| ------------- | ------------------------ |
| `groups`      |                          |
| `chmod`       |                          |
| `chown`       | change owner             |
| `traceroute`  |                          |
| `sshuttle`    |                          |
| `netdiscover` |                          |
| `dig`         | dns info                 |
| `xargs`       | start mutliple processes |
| `find`        |                          |
| `tar -czvf ${file}.tar.gz ${folder}`| create tar.gz file | 

## ssh disallow root login

```bash
sudo vi /etc/ssh/sshd_config
PermitRootLogin yes > PermitRootLogin no
service ssh restart
```
