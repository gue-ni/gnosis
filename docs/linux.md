# Linux

## important commands

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
| ``                                                        |                          |




## vim

### plugins

-   supertab
-   AutoComplPop

## mount usb drive

```bash
sudo fdisk -l

# output:
Device     Boot Start       End   Sectors  Size Id Type
/dev/sda1  *       64 121077759 121077696 57.7G  7 HPFS/NTFS/exFAT

# create mount directory
mkdir -p /media/usb

# mount usb 
sudo mount /dev/sda1 /media/usb
```

## sed

Add hello to the start of every line:

```bash
sed -i 's/^/hello /g' file.txt
```

## tmux

| Command                          | What does it do?             |
|----------------------------------|------------------------------|
| `C-b`                            | prefix key                   |
| `C-b %`                          | split vertically             |
| `C-b "`                          | split horizontally           |
| `C-b arrow`                      |  move between panes          |
| `C-b c`                          | Create new window            |
| `C-b n`                          | next window                  |
| `C-b p`                          | previous window              |
| `C-b $`                          | rename session               |
| `C-b d`                          | detach session               |
| `tmux ls`                        | list sessions                |
| `tmux attach -t <session>`       | attach session               |


## ssh jump hops 

Connect to the target host by first making a ssh connection to the jump host 
and then establishing a connection to the ultimate destination from there.

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

If this does still not work, set `preserve_hostname` in `/etc/cloud/cloud.cfg` to `true`.

## find files older than 7 days and move them to archive

```bash
find . -mtime +7 -print0 | xargs -0 -I '{}' mv {} archive/
```




