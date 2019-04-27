# pokemon terminal
# PATH=$HOME/.rbenv/shims:/usr/local/bin:$HOME/.Pokemon-Terminal:/usr/local/bin:/usr/bin:/bin:/usr/sbin
# pokemon torchic

# rbenv
#export PATH=/usr/local/bin:$PATH
#PATH=$HOME/.rbenv/bin:$PATH
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
#eval "$(rbenv init -)"
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"


# nodenv
export PATH=$HOME/.nodebrew/current/bin:$PATH

# direnv
eval "$(direnv hook zsh)"

# zsh files
ZSHHOME="${HOME}/dotfiles/zsh/.zsh.d"

# github
eval $(ssh-agent) 
ssh-add ~/.ssh/github

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

# yarn
export PATH=$HOME/.yarn/bin:$PATH

# grep option
export GREP_OPTIONS='--color=auto' 

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# for Postgres
export PGDATA=/usr/local/var/postgres


export PATH=/Library/Frameworks/Python.framework/Versions/3.X/bin:$PATH
export PATH="$HOME/.pyenv/shims:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
