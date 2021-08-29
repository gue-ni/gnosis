# Git

| Command  | What does it do? |
| -------- | ---------------- |
| `groups` |                  |
| `chmod`  |                  |

## ssh disallow root login

```bash
sudo vi /etc/ssh/sshd_config
PermitRootLogin yes > PermitRootLogin no
service ssh restart
```
