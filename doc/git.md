# Git

## Common Tasks

### Reset to last commit

`git reset --hard HEAD`

### Reset file to last commit

`git restore <file>`

## Submodules

[Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

```bash
# add submodule
git submodule add <repository url>

# update local repo with remote changes
git submodule update --remote 
```

## Links

[The Pro Git Book](https://git-scm.com/book/en/v2)

| Command                            | What does it do?                 |
| ---------------------------------- | -------------------------------- |
| `git remote set-url <name> <url>`  | change remote url                |
| `git remote add <name> <url>`      | add remote                       |
| `git commit . -m <comment>`        | new commit                       |
| `git commit -amend`                | change last commit comment       |
| `git log --oneline`                | show commit history              |
| `git revert <commit>`              | undo commit                      |
| `git fetch --all`                  | get all remote files and commits |
| `git checkout -b <branch>`         | create new branch and checkout   |
| `git push -u <remote> <branch>`    | create new remote branch         |
| `git restore <file>`               | restore file to previous version |
| `git diff (with our without HEAD)` | show changes since last commit   |
| `git push -d <remote> <branch>`    | delete remote branch             |
| `git branch -d <branch>`           | delete local branch              |
| `git push <remote> <branch>`       |                                  |
| `git merge <branch>`               |                                  |
| `git status`                       |                                  |
| `git branch`                       |                                  |
| `git init`                         |                                  |
| `git reset HEAD^`                  | undo last commit                 |

## Submodules

https://git-scm.com/book/en/v2/Git-Tools-Submodules

## Links

[The Pro Git Book](https://git-scm.com/book/en/v2)