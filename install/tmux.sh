if [ `brew list | grep tmux`x = "tmux"x ];then
    echo 'tmux already install'
else
    echo ' === tmuxをインストールします ==='
    brew install tmux

    # コピペに必要なライブラリ
    if [ `brew list | grep reattach-to-user-namespace`x = 'reattach-to-user-namespace'x ]; then 
        echo 'reattach-to-user-namespace already install'
    else
        echo ' === install reattach-to-user-namespace ==='
        brew install reattach-to-user-namespace
    fi
 fi
