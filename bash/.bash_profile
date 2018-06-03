# postgres
export PGDATA="/usr/local/var/postgres"

# language

## ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

## node
export NVM_DIR="$HOME/.nvm"
eval "$(nodenv init -)"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

## go
export GOPATH="$HOME/go"
if [ -x "`which go`" ]; then
  export GOROOT=`go env GOROOT`
  export GOPATH=$HOME/code/go-local
  export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
fi

## brew
HOMEBREW_PATH=/opt/boxen/homebrew

## python
export PYTHONHOME="$HOME/.pyenv/shims/python"
export PYENV_ROOT="$HOMEBREW_PATH/opt/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if [ -s $HOMEBREW_PATH/bin/pyenv ] ; then
  eval "$(pyenv init -)"
  pyenv global 2.7.6
  pyenv version | sed -e 's/ .*//'
fi

# alias for ruby
alias be="bundle exec"

# prompt
# # プロンプトに各種情報を表示
source $HOME/.git_files/git-completion.bash
source $HOME/.git_files/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=1

############### ターミナルのコマンド受付状態の表示変更
# \u ユーザ名
# \h ホスト名
# \W カレントディレクトリ
# \w カレントディレクトリのパス
# \n 改行
# \d 日付
# \[ 表示させない文字列の開始
# \] 表示させない文字列の終了
# \$ $
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n'
##############