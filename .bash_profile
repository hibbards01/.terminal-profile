# Profile
# This contains certain commands that I use regularly for the terminal.

# Adds tab completion for git commands
source ~/.terminal-profile/.git-completion.sh

# Adds the ability to show git information in the PS1 line.
source ~/.terminal-profile/.git-prompt.sh

# Fix colors on prompt and add git branch name
# Shows more details in prompt.
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
set TERM xterm-256color; export TERM
export PS1='\[\033[94m\][\[\033[m\]\[\033[90m\]\w\[\033[m\]\[\033[94m\]]\[\033[m\]\[\033[91m\]$(__git_ps1 " (%s)")\n\[\033[m\]\[\033[94m\]->\[\033[m\]  '
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad # defines nicer colors for the LS command

# MISC aliases
alias git-remove-untracked='git fetch --prune && git branch -r | awk "{print \$1}" | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk "{print \$1}" | xargs git branch -d' # Clean up local branches.
#alias windows='cd /mnt/c/Users/Admin/'
alias git-add-identity="ssh-add -K ~/.ssh/id_rsa"
alias rmd="rm -rf"

# Git aliases
alias gci="git commit"
alias gcim="git commit -m"
alias gst="git status"
alias ga="git add"
alias gall="git add ."
alias gap="git add --patch"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gcoa="git checkout ."
alias gdiff="git diff"
alias gdiffs="git diff --staged"
alias gbrall="git branch --all"
alias gbr="git branch"
alias gup="git branch -vv"
alias gbrd="git branch -D"
alias gcp="git cherry-pick"
alias gcpa="git cherry-pick --abort"
alias gcpc="git cherry-pick --continue"
alias gri="git rebase -i"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gm="git merge"
alias gmc="git merge --continue"
alias gma="git merge --abort"
alias gfp="git fetch --prune"
alias gfa="git fetch --all --prune"
alias gpu="git pull"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gps="git push --set-upstream"
alias gl="git log"
alias gl3="git log -3"
alias gr="git remote"
alias grv="git remote -v"
alias gra="git remote add"
alias grr="git remote rename"
alias grrm="git remote remove"
alias grs="git remote set-url"
alias gre="git reset"
alias greh="git reset HEAD"
alias grehh="git reset HEAD --hard"
alias grem="git reset --mixed"
alias gss="git stash save"
alias gsl="git stash list"
alias gsd="git stash drop"
alias gsp="git stash pop"
alias gsc="git stash clear"

# Adding to the PATH
export PATH="$HOME/bin:$PATH"
export VISUAL='subl -w'
export EDITOR="$VISUAL"
