# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
export SYSTEMD_PAGER=

export EDITOR=vim
export VISUAL=vim

# ripgrep
export RIPGREP_CONFIG_PATH="$HOME/.config/rg.conf"

# Android
# export JAVA_HOME="/usr/lib/jvm/java-openjdk"
export ANDROID_HOME="/opt/Android/Sdk"
# export ANDROID_AVD_HOME="$HOME/.android/avd"
export REPO_OS_OVERRIDE="linux"
# export PATH="$PATH:/opt/flutter/bin"
# export PATH="$PATH:/opt/Android/Sdk/tools/bin"
# export PATH="$PATH:/opt/jdk/jdk1.8.0_241/bin"
# export PATH="$PATH:/opt/flutter/bin/cache/dart-sdk/bin/"
# export PATH="$PATH:/opt/phantomjs-2.1.1-linux-x86_64/bin"

# flutter proxy
export FLUTTER_STORAGE_BASE_URL="https://mirrors.tuna.tsinghua.edu.cn/flutter"
export PUB_HOSTED_URL="https://mirrors.tuna.tsinghua.edu.cn/dart-pub"
# android sdkmanager
# alias sdkmanager="sdkmanager --sdk_root=/opt/Android/Sdk"

# using dedicated graphic card
# export DRI_PRIME=1

# rust apps
# https://github.com/rust-windowing/winit/issues/1967
export WINIT_UNIX_BACKEND=x11

export FCITX_X11_USE_CLIENT_SIDE_UI=1

# Mozilla
export MOZ_ENABLE_WAYLAND=1

# Libreoffice
# export SAL_ENABLESKIA=1

# gtags
# export GTAGSCONF='~/.config/gtags.conf'
export GTAGSLIBPATH="/usr/include"

# Have less display colours
# from: https://wiki.archlinux.org/index.php/Color_output_in_console#man
# explanation: https://misc.flogisoft.com/bash/tip_colors_and_formatting
#
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;49;92m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;35m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal

# qt5 
# Need to install qgnomeplatform
# This fix is guaranteed to work with Adwaita or Adwaita-dark.
# export QT_STYLE_OVERRIDE=Adwaita
export IBUS_USE_PORTAL=1
export QT_QPA_PLATFORM='wayland'
export QT_QPA_PLATFORMTHEME='gnome'
# export XDG_SESSION_TYPE='wayland'


# rust
export PATH="$PATH:$HOME/.cargo/bin"
# npm
# npm config set prefix "${HOME}/.local/lib/npm-packages"
NPM_PACKAGES="${HOME}/.local/lib/npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

# alias
alias so="source"
alias info="info --vi-keys"
alias l="ls -a --group-directories-first --color=auto"
alias ls="ls --group-directories-first --color=auto"
alias ll="ls -alh --group-directories-first --color=auto"
alias la="ls -a --group-directories-first --color=auto"
alias upgrade="sudo dnf upgrade"
alias sqlite="sqlite3"
alias vim="nvim"
# alias vim="/opt/neovim/bin/nvim"
alias readit="vim -u ~/.vimreader"
# alias firefox='/usr/bin/firefox-wayland'
# alias zeal="zeal -style Fusion"
alias bat="bat --style=plain --theme=gruvbox"
# tmux
alias ta="tmux attach"
alias tad="tmux attach -d -t"
alias ts="tmux new-session -s"
alias tl="tmux list-sessions"
alias tksv="tmux kill-server"
alias tkss="tmux kill-session -t"
alias qt-creater="/opt/qt/Tools/QtCreator/bin/qtcreator"
alias cmake="cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON"
alias rime="vim -c 'normal GG' ~/.local/share/fcitx5/rime/flypy_double.user.dict.yaml"

alias objdump="objdump -M intel "
alias j="z"
alias open="xdg-open"
alias o="xdg-open"
alias o.="xdg-open ."

# alias alacritty="WINIT_UNIX_BACKEND=x11 alacritty"

# Prompt
# function _update_ps1() {
    # local job_num="$(jobs | wc -l)"
    # PS1="$(${HOME}/Project/scripts/prompt.py $job_num)"
# }
# if [ "$TERM" != "linux" ]; then
    # PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
    # unset PS0
# else
    # PS1="[\u@\h \W]\$ "
# fi

if [[ ${EUID} == 0 ]] ; then
    PS1='\[\033[01;31m\][\u@\h \W] \$\[\033[00m\] '
else
    PS1='\[\033[01;34m\]\u@\h \W \$\[\033[00m\] '
fi

# PS1="\[\033[01;34m\][\u@\h \W] \[\033[00m\]\$\[\033[00m\] "

# apps
source /usr/share/autojump/autojump.bash
# source /usr/share/fzf/shell/key-bindings.bash

# killall ibus-daemon 2> /dev/null

# user defined functions
# disable Ctrl+s & Ctrl+q
if [[ -t 0 && $- = *i* ]]
then
    stty -ixon
fi

shopt -s autocd       # change to named directory
shopt -s cdspell      # autocorrects cd misspellings
shopt -s checkwinsize # update the value of LINES and COLUMNS after each command if altered
shopt -s cmdhist      # save multi-line commands in history as single line
shopt -s histappend

# Swaywm
# if [[ $DESKTOP_SESSION == "sway" ]]
# then
    # export GTK_IM_MODULE=wayland
    # export QT_IM_MODULE=wayland
    # export XMODIFIERS=@im=wayland
    # export QT_QPA_PLATFORM=wayland-egl
    # export SDL_VIDEODRIVER=wayland
    # export XDG_SESSION_TYPE=wayland
# fi

function av() {
    echo $1 >> ~/vocabulary
}

function set_proxy() {
    export all_proxy=socks5://127.0.0.1:7891
}
function unset_proxy() {
    unset all_proxy
}

function ccat() {
    # pip install pygments
    # https://zhuanlan.zhihu.com/p/49552439
    local style="monokai"
    if [ $# -eq 0 ]; then
        pygmentize -P style=$style -P tabsize=4 -f terminal256 -g
    else
        for NAME in $@; do
            pygmentize -P style=$style -P tabsize=4 -f terminal256 -g "$NAME"
        done
    fi
}

function mc() {
    mkdir "$@"
    cd "$@"
}

function try_until_success() {
    local i=1
    while true
    do echo "Try $i $* at $(date): "
        $* && break
        (( i+=1 ))
        sleep 3
    done
}
