# Git

- [Git](#git)
  - [Common Tasks](#common-tasks)
    - [Create alias for command](#create-alias-for-command)
    - [Diff two branches in github](#diff-two-branches-in-github)
    - [Set Default Editor To `vi`](#set-default-editor-to-vi)
    - [Reset to last commit](#reset-to-last-commit)
    - [Reset file to last commit](#reset-file-to-last-commit)
    - [Get Short Commit Hash](#get-short-commit-hash)
    - [Checkout Remote Branch](#checkout-remote-branch)
  - [Submodules](#submodules)
  - [Ignore Files without modifying `.gitignore`](#ignore-files-without-modifying-gitignore)
  - [Useful Commands](#useful-commands)
  - [Links](#links)


## Common Tasks

### Create alias for command

```bash
# original command
git log --oneline --graph --decorate --all

# create alias
git config --global alias.lol "log --oneline --graph --decorate --all"

# use the alias
git lol
```

### Diff two branches in github

[Comparing Commits](https://docs.github.com/en/pull-requests/committing-changes-to-your-project/viewing-and-comparing-commits/comparing-commits)

[https://github.com/gue-ni/renderer/compare/master...dev](https://github.com/gue-ni/renderer/compare/master...dev)

### Set Default Editor To `vi`

`git config --global core.editor "vi"`

### Reset to last commit

`git reset --hard HEAD`

### Reset file to last commit

`git restore <file>`

### Get Short Commit Hash

`git log -1 --pretty=format:%h`

### Checkout Remote Branch

```bash
# get remote info
git fetch origin

# list thre branches available
git branch -a

# checkout branch
git checkout -b remote-branch-name origin/remote-branch-name
```

## Submodules

[Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

```bash
# add submodule
git submodule add <repository url>

# update local repo with remote changes
git submodule update --remote
```

## Ignore Files without modifying `.gitignore`

To ignore user-specific as well as repo-specific changes without having to modify the
`.gitignore` file you should put the relevant patterns in `$GIT_DIR/info/exclude`.
`$GIT_DIR` usually refers to `.git/`.

## Useful Commands

| Command                            | Description                      |
| ---------------------------------- | -------------------------------- |
| `git remote set-url <name> <url>`  | change remote url                |
| `git remote add <name> <url>`      | add remote                       |
| `git commit . -m <comment>`        | new commit                       |
| `git commit --amend`               | change last commit comment       |
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

## Links

- [The Pro Git Book](https://git-scm.com/book/en/v2)
- [Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
