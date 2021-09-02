# Linux

| Command      | What does it do? |
| ------------ | ---------------- |
| `groups`     |                  |
| `chmod`      |                  |
| `chown`      | change owner     |
| `traceroute` |                  |
| `sshuttle`   |                  |
| `dig`        | dns info         |

## ssh disallow root login

```bash
sudo vi /etc/ssh/sshd_config
PermitRootLogin yes > PermitRootLogin no
service ssh restart
```
