# Linux

## Table of Contents

- [Linux](#linux)
  - [Table of Contents](#table-of-contents)
  - [Bash](#bash)
  - [Vim](#vim)
    - [Commands](#commands)
  - [Tmux](#tmux)
  - [SSH](#ssh)
    - [ssh jump hops](#ssh-jump-hops)
    - [ssh straight into tmux](#ssh-straight-into-tmux)
    - [ssh disallow root login](#ssh-disallow-root-login)
  - [Create High Quality Gifs from Videos](#create-high-quality-gifs-from-videos)
  - [Block IP address with UFW](#block-ip-address-with-ufw)
  - [where to store user scripts](#where-to-store-user-scripts)
  - [get referer with awk](#get-referer-with-awk)
  - [change hostname](#change-hostname)
  - [find files older than 7 days](#find-files-older-than-7-days)
  - [Nginx](#nginx)
    - [Setup nginx server block for domain](#setup-nginx-server-block-for-domain)
    - [Setup deploy with git using post-receive hooks](#setup-deploy-with-git-using-post-receive-hooks)
    - [close connection without response](#close-connection-without-response)
  - [mount usb drive](#mount-usb-drive)
  - [sed](#sed)
  - [redirect stderr to stdout](#redirect-stderr-to-stdout)
  - [Stat Disk Usage](#stat-disk-usage)
  - [Mirror a website](#mirror-a-website)
  - [Delete files found with `find`](#delete-files-found-with-find)

## Bash

| Command                         | Description                |
| ------------------------------- | -------------------------- |
| `groups`                        |                            |
| `chmod`                         |                            |
| `chown`                         | change owner               |
| `traceroute`                    |                            |
| `sshuttle`                      |                            |
| `netdiscover`                   |                            |
| `dig`                           | dns info                   |
| `xargs`                         | start mutliple processes   |
| `find`                          | find file                  |
| `tar -czvf`                     | create tar.gz file         |
| `tar -xzvf`                     | extract tar.gz file        |
| `rsync`                         | create backup              |
| `df`                            | files system info          |
| `du`                            | disk usage info            |
| `split`                         | split large files          |
| `w`                             | logged in users            |
| `netstat`, `netstat -tupan`     | network information        |
| `usermod -aG sudo $username`    | add user to sudo group     |
| `last`                          | show last user activity    |
| `neofetch`                      | display system information |
| `ncdu --si`                     | show disk usage            |
| `journalctl --vacuum-size=500M` | clean up journal           |
| `ranger`                        | file explorer              |

## Vim

### Commands

| Command                  | Description                         |
| ------------------------ | ----------------------------------- |
| :Ex or :E                | File Explorer                       |
| :Ex or :E                | File Explorer                       |
| :Vex                     | Split File Explorer                 |
| :s/old/new/g             | Replace in lines                    |
| dt<character>            | delete up to <character>            |
| cw                       | delete word and go into insert mode |
| C-u                      | go up half a page                   |
| C-d                      | go down half a page                 |
| %                        | jump to closing bracket             |
| :find                    | search for file                     |
| :grep                    | grep files                          |
| gd                       | search for symbol under cursor      |
| :Tex                     | Tab file explorer                   |
| gt                       | go to next tab                      |
| :split                   | split into windows                  |
| C-w w                    | navigate to next split window       |
| J                        | join lines, removing newline        |
| gq                       | format long lines                   |
| set paste + shift insert | paste from clipboard                |

## Tmux

| Command                            | Description        |
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

## Create High Quality Gifs from Videos

```bash
#!/bin/sh
set -e

fps=30
width=1280
palette="palette.png"
filters="fps=${fps},scale=${width}:-1:flags=lanczos"

ffmpeg -i $1 -vf "palettegen" -y $palette
ffmpeg -i $1 -i $palette -lavfi "${filters} [x]; [x][1:v] paletteuse" -y $2
```

## Block IP address with UFW

Careful: the ordering is important, so we have to insert deny rules before allow rules.

```bash
IP=113.211.133.116
sudo ufw insert 1 deny from ${IP} to any
```

## where to store user scripts

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

## find files older than 7 days

```bash
find . -mtime +7 -print0 | xargs -0 -I '{}' mv {} archive/
```

## Nginx

### Setup nginx server block for domain

As root:

```bash
bash <(curl -s https://raw.githubusercontent.com/gue-ni/stuff/main/scripts/setup_nginx_server_block_for_domain.sh)
```

The [script](scripts/setup_nginx_server_block_for_domain.sh).

### Setup deploy with git using post-receive hooks

On server, as root:

```bash
bash <(curl -s https://raw.githubusercontent.com/gue-ni/stuff/main/scripts/setup_git_deploy_with_post_receive.sh)
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
## redirect stderr to /dev/null

```bash
command 2>/dev/null
```

## Stat Disk Usage

```bash
# estimate file space usage
du -sh .

# report file system space usage
df -h
```

## Mirror a website

```bash
wget --mirror \
    --user='' \
    --password='' \
    --convert-links \
    --adjust-extension \
    --page-requisites \
    --no-parent \
    --random-wait --wait 3 --no-http-keep-alive \
    https://site-to-download.com
```

## Delete files found with `find`

```bash
find . -name *_log.txt -print0 | xargs -I {} -0 rm {}
```
