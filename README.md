# DevOps

## Setup nginx server block for domain

As root:

```bash
bash <(curl -s https://raw.githubusercontent.com/gue-ni/DevOps/main/scripts/setup_nginx_server_block_for_domain.sh)
```

## Setup deploy with git using post-receive hooks

On server, as root:

```bash
bash <(curl -s https://raw.githubusercontent.com/gue-ni/DevOps/main/scripts/setup_git_deploy_with_post_receive.sh)
```

On local machine:

```bash
git remote add production ssh://root@jakobmaier.at/srv/git/project.git/
git push -u production master
```
