# Linux

| Command                                                   | What does it do?         |
| --------------------------------------------------------- | ------------------------ |
| `groups`                                                  |                          |
| `chmod`                                                   |                          |
| `chown [OPTIONS] user:user dir/`                          | change owner             |
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
| `usermod -aG sudo $username`                              | add user to sudo group   |
| `last`                                                    | show last user activity  |

## ssh jump hops 

 Connect to the target host by first making a ssh connection to the jump host and then establishing a connection to the ultimate destination from there.

```bash
ssh -J user@jumphost user@target
```

## ssh disallow root login

```bash
sudo vi /etc/ssh/sshd_config
PermitRootLogin yes > PermitRootLogin no
service ssh restart
```

## get referer with awk

```bash
cat access.log | awk '{ print $11 }' | sort | uniq
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

## find files older than n days

```bash
find . -mtime +7 -print0 | xargs -0 -I '{}' mv {} archive/
```




