# git config

```bash
[core]
    editor = vim
        autocrlf = true
        excludesfile = /home/meirfi/.gitignore
[user]
        name = meirfi
        email = meirfi@il.ibm.com

[include]
    path = ~/.config.d/.gitconfig.d/.gitalias
    path = ~/.config.d/.gitconfig.d/.gitcolots
[format]
    pretty = "%H %ci %ce %ae %d %s"
[push]
        default = matching
```