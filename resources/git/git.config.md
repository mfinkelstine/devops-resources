# git config

```bash
[user]
	name = xxxx
	email = xxxxx@gmail.com
[credential]
	helper = cache --timeout 86400
[core]
	filemode = true
	#pager = less -iXFR -x4 -M
[merge]
#	tool = meld
	tool = nvim
[mergetool "nvim"]
	# cmd = nvim -f -c \"Gvdiffsplit!\" \"$MERGED\"
	# cmd = nvim -f -d \"$LOCAL\" \"$MERGED\" \"$REMOTE\"
	cmd = nvim -d $LOCAL $REMOTE $MERGED -c '$wincmd w' -c 'wincmd J'
[color]
	ui = true
[github]
	user = c02y
	token =
[push]
	default = simple
[http]
	postBuffer = 524288000
[pager]
	log  = diff-highlight | $PAGER
	show = diff-highlight | $PAGER
	diff = diff-highlight | $PAGER
	branch = $PAGER
	status = $PAGER
[color "diff-highlight"]
	oldNormal = red bold
	oldHighlight = red bold 52
	newNormal = green bold
	newHighlight = green bold 22
[color "diff"]
	frag = magenta bold
	meta = yellow
	commit = yellow bold
	old = red bold
	whitespace = red reverse
	new = green bold
[submodule]
	recurse = true
[status]
	showStash = true
        default = matching
```