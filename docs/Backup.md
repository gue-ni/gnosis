# Backup

## TODO

* Figure out a strategy for making backups
* Buy a harddrive

## Ideas

* Encryption Key on QR code
* raspberry pi as file server

## Software

* rsync
* borg
* duplicati
* restic

## Don't forget

* when rsync'ing to USB, use `--modify-window=2`, as FAT does not store accurate timestamps 

## LUKS 

https://linux.tips/tutorials/how-to-encrypt-a-usb-drive-on-linux-operating-system


```bash

# find device to encrypt
sudo fdisk -l

# encrypt device
sudo cryptsetup luksFormat /dev/sdb

# setup mapping
sudo cryptsetup luksOpen /dev/sdb USBDrive

ls -arlt /dev/mapper | tail

# create a filesystem
sudo mkfs -t ext4 /dev/mapper/USBDrive

# mount the device 
sudo mount /dev/mapper/USBDrive /media/pi/USBDrive

# verify mounting
df -h /media/pi/USBDrive
```

### mounting: 

```bash
sudo cryptsetup luksOpen /dev/sdb USBDrive
sudo mount /dev/mapper/USBDrive /media/pi/USBDrive
```
### unmounting: 

```bash
sudo umount /media/pi/USBDrive
sudo cryptsetup luksClose USBDrive
```





