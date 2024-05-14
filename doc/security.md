# Security

## Content

- [Security](#security)
  - [Content](#content)
  - [Encrypt File with Openssl](#encrypt-file-with-openssl)
  - [Check for SQL Injection](#check-for-sql-injection)

## Encrypt File with Openssl

```bash
# encrypt
openssl enc -e -aes-256-cbc -base64 -pbkdf2 -in text.plain -out text.enc

# decrypt
openssl enc -d -aes-256-cbc -base64 -pbkdf2 -in text.enc -out text.dec
```

## Check for SQL Injection

```sql
SELECT * FROM table WAITFOR DELAY '00:00:20'
```
