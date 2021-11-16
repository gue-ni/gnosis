# DevOps

## NGINX setup

As root:

`bash <(curl -s https://raw.githubusercontent.com/gue-ni/DevOps/main/scripts/setup_nginx_server_block_for_domain.sh)`

## Deploy with git post-receive hook

On server, as root:

`bash <(curl -s https://raw.githubusercontent.com/gue-ni/DevOps/main/scripts/setup_git_deploy_with_post_receive.sh)`

On local machine:

```bash
git remote add production ssh://root@jakobmaier.at/srv/git/project.git/
git push -u production master
```
