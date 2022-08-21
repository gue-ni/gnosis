# Backup

## Ideas

* Encryption Key on QR code
* raspberry pi as file server

## LUKS 

Encrypt a usb drive on linux.

https://linux.tips/tutorials/how-to-encrypt-a-usb-drive-on-linux-operating-system

### Setup:

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

### Mounting: 

```bash
sudo cryptsetup luksOpen /dev/sda1 USBDrive
sudo mount /dev/mapper/USBDrive /media/pi/USBDrive
```
### Unmounting: 

```bash
sudo umount /media/pi/USBDrive
sudo cryptsetup luksClose USBDrive
```

## WSL

If there is a input/output error, try running `wsl.exe --shutdown`.




