# Linux

| Command                                                   | What does it do?         |
| --------------------------------------------------------- | ------------------------ |
| `groups`                                                  |                          |
| `chmod`                                                   |                          |
| `chown`                                                   | change owner             |
| `traceroute`                                              |                          |
| `sshuttle`                                                |                          |
| `netdiscover`                                             |                          |
| `dig`                                                     | dns info                 |
| `xargs`                                                   | start mutliple processes |
| `find`                                                    |                          |
| `tar -czvf ${file}.tar.gz ${folder}`                      | create tar.gz file       |
| `rsync -av --exclude-from=ignore.txt src_dir/ target_dir` | create backup            |
| `df`                                                      | files system info        |
| `du`                                                      | disk usage info          |
| `split`                                                   | split large files        |
| `w`                                                       | logged in users          |
| `netstat`, `netstat -tupan`                               | network information      |

## ssh disallow root login

```bash
sudo vi /etc/ssh/sshd_config
PermitRootLogin yes > PermitRootLogin no
service ssh restart
```

## change hostname

```bash
# change hostname
sudo vi /etc/hostname 

# replace all occurrences of old hostname with new
sudo vi /etc/hosts

# reboot machine
sudo reboot 
```
