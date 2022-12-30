# Linux

## Table of Contents

-   [Bash](#bash)
-   [Vim](#vim)
-   [SSH](#ssh)
-   [Tmux](#tmux)
-   [Nginx](#nginx)

## Bash

| Command                                          | What does it do?           |
| -------------------------------------------------| -------------------------- |
| `groups`                                         |                            |
| `chmod`                                          |                            |
| `chown`                                          | change owner               |
| `traceroute`                                     |                            |
| `sshuttle`                                       |                            |
| `netdiscover`                                    |                            |
| `dig`                                            | dns info                   |
| `xargs`                                          | start mutliple processes   |
| `find`                                           | find file                  |
| `tar -czvf`                                      | create tar.gz file         |
| `tar -xzvf`                                      | extract tar.gz file        |
| `rsync`                                          | create backup              |
| `df`                                             | files system info          |
| `du`                                             | disk usage info            |
| `split`                                          | split large files          |
| `w`                                              | logged in users            |
| `netstat`, `netstat -tupan`                      | network information        |
| `usermod -aG sudo $username`                     | add user to sudo group     |
| `last`                                           | show last user activity    |
| `neofetch`                                       | display system information |
| `ncdu --si`                                      | show disk usage            |
| `journalctl --vacuum-size=500M`                  | clean up journal           |
| `ranger`                                         | file explorer              |


## Vim

### Commands

| Command       | What does it do?                    |
| ------------- | ----------------------------------- |
| :Ex           | File Explorer                       |
| :Vex          | Split File Explorer                 |
| :s/old/new/g  | Replace in lines                    |
| dt<character> | delete up to <character>            |
| cw            | delete word and go into insert mode |
| C-u           | go up half a page                   |
| C-d           | go down half a page                 |
| %             | jump to closing bracket             |
| :find         | search for file                     |

### Implement VSCode's Ctrl+P in Vim

### plugins

-   supertab
-   AutoComplPop

## Tmux

| Command                            | What does it do?   |
| ---------------------------------- | ------------------ |
| `C-b`                              | prefix key         |
| `C-b %`                            | split vertically   |
| `C-b "`                            | split horizontally |
| `C-b arrow`                        | move between panes |
| `C-b c`                            | Create new window  |
| `C-b n`                            | next window        |
| `C-b p`                            | previous window    |
| `C-b $`                            | rename session     |
| `C-b w`                            | widnow mode        |
| `C-b d`                            | detach session     |
| `tmux ls`                          | list sessions      |
| `tmux attach-session -t <session>` | attach session     |

## SSH

### ssh jump hops

Connect to the target host by first making a ssh connection to the jump host
and then establishing a connection to the ultimate destination from there.

```bash
ssh -J user@jumphost user@target
```

### ssh straight into tmux

```bash
Host *
    RequestTTY yes
    RemoteCommand tmux new -A -s default
```

### ssh disallow root login

```bash
sudo vi /etc/ssh/sshd_config
PermitRootLogin yes > PermitRootLogin no
service ssh restart
```
    
## Where to store user scripts
    
User scripts should generally go into `/usr/local/bin`.

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

## Nginx

### Setup nginx server block for domain

As root:

```bash
bash <(curl -s https://raw.githubusercontent.com/gue-ni/DevOps/main/scripts/setup_nginx_server_block_for_domain.sh)
```

The [script](scripts/setup_nginx_server_block_for_domain.sh).

### Setup deploy with git using post-receive hooks

On server, as root:

```bash
bash <(curl -s https://raw.githubusercontent.com/gue-ni/DevOps/main/scripts/setup_git_deploy_with_post_receive.sh)
```

The [script](scripts/setup_git_deploy_with_post_receive.sh).

On local machine:

```bash
git remote add production ssh://root@jakobmaier.at/srv/git/project.git/
git push -u production master
```

### close connection without response

```bash
return 444;
```

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

## redirect stderr to stdout

```bash
command > file 2>&1
```

## Disk Usage

```bash
# print size of current directory
du -sh .
> 17G
```

<<<<<<< HEAD
## Gdb

| Command | Effect |
| ------- | ------ |
| layout 
=======
## Mirror a website 
    
```bash
wget --mirror \
    --user= \
    --password='' \
    --convert-links \
    --adjust-extension \
    --page-requisites \
    --no-parent \
    --random-wait --wait 3 --no-http-keep-alive \ # try not to get banned
    https://site-to-download.com
 ```
>>>>>>> 24a359c89d21f5d48c7bbba2c37e2f5afeb8d009
