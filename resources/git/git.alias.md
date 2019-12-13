# git aliases

```bash
[alias]
    alias = "!f(){ git config -l | grep alias; };f"
    a = add --all
    ai = add -i
    ############# apply
    ap = apply
    as = apply --stat
    ac = apply --check
    ############# am
    ama = am --abort
    amr = am --resolved
    ams = am --skip
    ############# branch
    b = branch
    ba = branch -a
    bd = branch -d
    br = branch -r
    bdd = branch -D
    bra = branch -avv --list

    ############# commit section
    c = commit
    ca = commit -a
    cm = commit -m
    cem = commit --allow-empty -m
    cam = commit -am
    cd = commit --amend
    cad = commit -a --amend
    ced = commit --allow-empty --amend
    cia = commit --amend --no-edit
    #############
    cp = cherry-pick
    cpa = cherry-pick --abort
    cpc = cherry-pick --continue
    #############
    d = diff
    dc = diff --cached
    dl = difftool
    dlc = difftool --cached
    dk = diff --check
    dp = diff --patience
    dck = diff --cached --checkout
    dfs = diff --staged


    ############# fetch
    f = fetch
    fa = fetch --all
    fo = fetch origin
    fu = fetch upstream
    fp = fetch --prune
    #############
    fp = format-patch
    #############
    fk = fsck
    #############
    g = grep -p
    #############
    l = log --oneline
    lg = log --oneline --graph --decorate
    lgs = log --pretty=format:'%C(green)%h%Creset - %s%C(yellow)%d%Creset%n %aD (%ar %C(red)- %an%Creset)' --graph --color
    lgl = log --pretty=format:'%C(green)%h%Creset - %s%C(yellow)%d%Creset%n %aD (%ar %C(red)- %an%Creset)' --graph --color --all
    l10 = log --pretty=oneline -10 --pretty=format:'%C(green)%h%Creset - %s%C(yellow)%d%Creset%n %aD (%ar %C(red)- %an%Creset)' --graph --color --all
    l20 = log --pretty=oneline -20 --pretty=format:'%C(green)%h%Creset - %s%C(yellow)%d%Creset%n %aD (%ar %C(red)- %an%Creset)' --graph --color --all
    logg = log --graph --decorate --oneline --abbrev-commit --all
    lgg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit
    stats = log -10 --dirstat=files,1,cumulative --ignore-blank-lines --abbrev-commit --oneline --graph --decorate
    #############
    ls = ls-files
    lsf = "!git ls-files | grep -i"
    #############
    m = merge
    ma = merge --abort
    mc = merge --continue
    ms = merge --skip
    #############
    co = checkout
    cb = checkout -b
    #############
    pr = prune -v
    #############
    ps    = push
    psf   = push -f
    psu   = push -u
    pso   = push origin
    psao  = push --all origin
    psfo  = push -f origin
    psuo  = push -u origin
    psom  = push origin master
    psfom = push -f origin master
    psuom = push -u origin master
    #############
    pl   =  pull
    plu  = pull -u
    plo  = pull origin
    plp  = pull upstream
    plom = pull origin master
    plpm = pull upstream master
    pb   = pull --rebase
    pbo  = pull --rebase origin
    pbp  = pull --rebase upstream
    pbom = pull --rebase origin master
    pbpm = pull --rebase upstream master
    #############
    rb = rebase
    rba = rebase --abort
    rbc = rebase --continue
    rbi = rebase --interactive
    rbs = rebase --skip
    #############
    re   = reset
    rh   = reset HEAD
    reh  = reset --hard
    rem  = reset --mixed
    res  = reset --soft
    rehh = reset --hard HEAD
    remh = reset --mixed HEAD
    resh = reset --soft HEAD
    #############
    r  = remote
    ra = remote add
    rr = remote rm
    rv = remote -v
    rm = remote rename
   rp = remote prune
    rs = remote show
    rao = remote add origin
    rau = remote add upstream
    rso = remote show origin
    rsu = remote show upstream
    rpo = remote prune origin
    rpu = remote prune upstream
    #############
    s  = status
    sb = status -s -b
    #############
    sa = stash apply
    sc = stash clear
    sd = stash drop
    sl = stash list
    sp = stash pop
    ss = stash save
    sw = stash show
    sss = "stash show stash@{0} -p"
    ssf = "!f(){ git stash show -p stash@{${1}}; };f"

    #############
    w = show
    wp = show -p
    wr = show -p --no-color
    #############
    svnr = svn rebase
    svnd = svn dcommit
    svnl = svn log --oneline --show-commit
    #############
    assume = update-index --assume-unchanged
    unassume = update-index --no-assume-unchanged
    assumed = "!git ls-files -v | grep ^h | cut -c 3-"
    unassumeall = !git assumed | xargs git update-index --no-assume-unchanged
    assumeall = "!git st -s | awk {'print $2'} | xargs git assume"

    #############
    ours = "!f() { git checkout --ours $@ && git add $@; }; f"
    theirs = "!f() { git checkout --theirs $@ && git add $@; }; f"
    #############
    whois = "!sh -c 'git log -i -1 --pretty=\"format:%an <%ae>\n\" --author=\"$1\"' -"
    whatis = show -s --pretty='tformat:%h (%s, %ad)' --date=short
    #############
    sm = submodule
    sup = submodule update
    subpull = !git submodule foreach git pull --tags origin master
    ##############
    barebranch = !sh -c 'git symbolic-ref HEAD refs/heads/$1 && git rm --cached -r . && git clean -xfd' -
    flat = clone --depth 1
    subrepo = !sh -c 'filter-branch --prune-empty --subdirectory-filter $1 master' -
    human = name-rev --name-only --refs=refs/heads/*
    serve = !git daemon --reuseaddr --verbose  --base-path=. --export-all ./.git
    snapshot = !git stash save "snapshot: $(date)" && git stash apply "stash@{0}"
    cl = "!f() { echo 'Remove following files?'; echo; git clean -dn; echo; echo 'Press ENTER to confirm'; read -p 'Press ^C to stop cleanup and exit' a && git clean -df; }; f"
    sll = "!f() { for s in `git stash list --pretty=format:%gd`; do git stash show -p $s; done; };f"
    ff = "!f(){ B=$(git rev-parse --abbrev-ref HEAD) && git merge --ff-only origin/$B; };f"
    mm = merge --no-ff -
    k = "!f(){ gitk master origin/master ORIG_HEAD HEAD; };f"
    rmbranch = "!f(){ git branch -d ${1} && git push origin --delete ${1}; };f"
    mkbranch = "!f(){ git checkout -b ${1} && git push origin -u ${1}; };f"
    unfuck = "!f(){ git reset --hard origin/`git rev-parse --abbrev-ref HEAD`; rm -fv `git st | grep ^? | cut -d' '  -f2-`; }; f"
    up = "pull --ff-only --stat --prune"
    vim = "!f(){ vim -p `git st | cut -c 2- | grep '^M\\|\\?' | cut -d' ' -f2-`; }; f"


```