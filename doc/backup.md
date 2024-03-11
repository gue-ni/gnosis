# Backup

## Ideas

- Encryption Key on QR code
- raspberry pi as file server -> works, but very slow

## FreeFileSync

Use [FreeFileSync](https://freefilesync.org/) to sync windows drives with external hard drive
and even raspberry pi as sftp server ([more here](https://freefilesync.org/manual.php?topic=ftp-setup)).
FreeFileSync can also run as scheduled batch jobs
([more here](https://freefilesync.org/manual.php?topic=schedule-batch-jobs)).

## Raspberry Pi as NAS with Samba

- [NAS Box raspberry pi tutorial](https://www.raspberrypi.com/tutorials/nas-box-raspberry-pi-tutorial/)
- [Map a Network Drive in Windows](https://support.microsoft.com/en-us/windows/map-a-network-drive-in-windows-29ce55d1-34e3-a7e2-4801-131475f9557d)
- [Pi Network File Share to Windows](https://www.youtube.com/watch?v=8QxJWW0mjAs)
- [exFat with rasbian and samba](https://nebulousthinking.wordpress.com/2018/09/29/using-exfat-drives-with-rasbian-and-samba/)

To hide home directory set `available = no` but `browseable = yes`.

## Permanently mount USB drive

```bash
# find drive to mount
df -h
# or
fdisk -l

# get uuid of disk partition
sudo blkid

# edit fstab file
sudo vi /etc/fstab

# add this line:
UUID=D632-BE5F /mnt/pidrive exfat defaults,auto,users,rw,nofail 0 0

# now test it out
sudo mount -a
```

## LUKS

[encrypt usb drive on linux](https://linux.tips/tutorials/how-to-encrypt-a-usb-drive-on-linux-operating-system)

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
