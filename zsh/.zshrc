# pokemon terminal
# PATH=$HOME/.rbenv/shims:/usr/local/bin:$HOME/.Pokemon-Terminal:/usr/local/bin:/usr/bin:/bin:/usr/sbin
# pokemon torchic

# rbenv
export PATH=/usr/local/bin:$PATH
PATH=$HOME/.rbenv/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# nodenv
export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"

# direnv
eval "$(direnv hook zsh)"

# zsh files
ZSHHOME="${HOME}/dotfiles/zsh/.zsh.d"

# github
eval $(ssh-agent) 
ssh-add ~/.ssh/github

# sublime
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

# grep option
export GREP_OPTIONS='--color=auto' 

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

alias be="bundle exec"
alias el="exec $SHELL"
alias ua="git add"
alias ub="git branch"
alias uc="git commit"
alias uck="git checkout"
alias ud="git diff"
alias uf="git fetch"
alias ul="git log"
alias ug="git grep"
alias up="git pull"
alias uh="git push"
alias uls="git ls-files"
alias us="git status"
alias ush="git stash"
