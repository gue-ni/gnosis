# Git

| Command | What does it do?               |
| ------- | ------------------------------ |
| `chmod` | change file/folder permissions |

## ssh disallow root login

```bash
sudo vi /etc/ssh/sshd_config
PermitRootLogin yes > PermitRootLogin no
service ssh restart
```
