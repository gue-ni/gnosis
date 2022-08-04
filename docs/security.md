# Security

## encrypt file with openssl

```bash
# encrypt
openssl enc -e -aes-256-cbc -base64 -pbkdf2 -in text.plain -out text.enc

# decrypt
openssl enc -d -aes-256-cbc -base64 -pbkdf2 -in text.enc -out text.dec
```
