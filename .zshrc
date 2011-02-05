export ZSH_THEME="trapd00r2-w-git"
export MOZ_DISABLE_PANGO=1
export PERL_MM_USE_DEFAULT=1

if [[ -f $HOME/.perlbrew/init ]]; then
    source $HOME/.perlbrew/init
fi

__perlbrew_reinit () {
    echo '# DO NOT EDIT THIS FILE' > $HOME/.perlbrew/init
    command perlbrew env $1 >> $HOME/.perlbrew/init
    source $HOME/.perlbrew/init
    __perlbrew_set_path
}

__perlbrew_set_path () {
    [[ -z "$PERLBREW_ROOT" ]] && return 1
    export PATH_WITHOUT_PERLBREW=$(perl -e 'print join ":", grep { index($_, $ENV{PERLBREW_ROOT}) } split/:/,$ENV{PATH};')
    export PATH=$PERLBREW_PATH:$PATH_WITHOUT_PERLBREW
}
__perlbrew_set_path

perlbrew () {
    local exit_status
    case $1 in
        (use)
            if [[ -x "$PERLBREW_ROOT/perls/$2/bin/perl" ]]; then
                eval $(command perlbrew env $2)
                __perlbrew_set_path
            elif [[ "$2" = "system" ]]; then
                unset PERLBREW_PERL
                eval $(command perlbrew env)
                __perlbrew_set_path
            else
                echo "$2 is not installed" >&2
                exit_status=1
            fi
            ;;

        (switch)
            if [[ ! -d $HOME/.perlbrew ]]; then
                mkdir -p $HOME/.perlbrew
            fi

            if [[ -x "$PERLBREW_ROOT/perls/$2/bin/perl" ]]; then
                __perlbrew_reinit $2

            elif [[ "$2" = "system" ]]; then
                perlbrew off
                return $?
            else
                echo "$2 is not installed" >&2
                exit_status=1
            fi
            ;;

        (off)
            if [[ ! -d $HOME/.perlbrew ]]; then
                mkdir -p $HOME/.perlbrew
            fi

            unset PERLBREW_PERL
            command perlbrew off

            __perlbrew_reinit
            ;;

        (*)
            command perlbrew $*
            exit_status=$?
            ;;
    esac
    hash -r
    return ${exit_status:-0}
}



# \x0d \E[2K --- redraw
#pickyfont set monte1 normal &&
#pickyfont set pro1   italic

# export CASE_SENSITIVE="true"
#
#zle-keymap-select () {
#    if [ $TERM = "rxvt-256color" ]; then
#        if [ $KEYMAP = vicmd ]; then
#            echo -ne "\033]12;Red\007"
#        else
#            echo -ne "\033]12;SteelBlue\007"
#        fi
#    fi
#}
#zle -N zle-keymap-select
#zle-line-init () {
#    zle -K viins
#    if [ $TERM = "rxvt-256color" ]; then
#        echo -ne "\033]12;SteelBlue\007"
#    fi
#}
#zle -N zle-line-init
#

#export ZDOTDIR=$HOME/configs/zsh

#export VIMINIT=/home/scp1/configs/vim
#

# Use Term::ReadLine::Zoid for vi-bindings
#export PERL_RL=Zoid


source $HOME/.zsh/colors.zsh
source $HOME/.zsh/alias.zsh
source $HOME/.zsh/functions.zsh
source $HOME/.zsh/git.zsh
source $HOME/.zsh/appearance.zsh
source $HOME/.zsh/colors.zsh
source $HOME/.zsh/$ZSH_THEME.zsh-theme

#export TERM='rxvt-256color'
export CDPATH='.:~:/mnt'
export PATH=$HOME/devel/utils:~/bin:/bin:/usr/bin:/usr/local/bin:/usr/bin/site_perl:/usr/bin/core_perl:/usr/bin/vendor_perl:/usr/lib/perl5/site_perl/bin:/usr/lib/perl5/vendor_perl/bin:/usr/lib/perl5/core_perl/bin:/sbin:/usr/sbin:/usr/bin/perlbin/site:/usr/bin/perlbin/vendor:/usr/bin/perlbin/core:/home/scp1/perl5/perlbrew/perls/perl-5.8.3/
export MANPATH=$MANPATH:/usr/local/man:/opt/local/share/man
export EDITOR=vim
export PAGER=vimpager
setopt ALL_EXPORT

export CLIPBORED_DMENU_FONT='-windows-montecarlo-medium-r-normal--0-0-72-72-c-0-microsoft-cp1252'
export CLIPBORED_DMENU_NORMAL_FG='#484848'
export CLIPBORED_DMENU_NORMAL_BG='#1c1c1c'
export CLIPBORED_DMENU_SELECT_FG='#1c78ef'
export CLIPBORED_DMENU_SELECT_BG='#292929'
export CLIPBORED_DMENU_LISTMODE='vertical'
export CLIPBORED_DMENU_LINES=30

export DMENU_FONT='-windows-montecarlo-medium-r-normal--0-0-72-72-c-0-microsoft-cp1252'
export DMENU_NORMAL_FG='#484848'
export DMENU_NORMAL_BG='#1c1c1c'
export DMENU_SELECT_FG='#1c78ef'
export DMENU_SELECT_BG='#292929'
export DMENU_LINES='-l 30'

export DZEN_FONT='-windows-montecarlo-medium-r-normal--0-0-72-72-c-0-microsoft-cp1252'
export DZEN_FG='#ffffff'
export DZEN_BG='#1c1c1c'
export DZEN_WIDTH=1680
export DZEN_X_POS=0
export DZEN_Y_POS=1040
export DZEN_ALIGNMENT='c'

export MPD_HOST='192.168.1.100'
export MPD_PORT=6600
export MPD_PASS=`smokingkills`
export MPD_USER='scp1'




#if [ "$TERM" = "linux" ]; then
#
## a [8] at the end of the string will store the color
## as a default one
#
#    echo -en "\e]P01c1c1c" #black
#    echo -en "\e]P81c1c1c" #darkgrey
#    echo -en "\e]P1ff4747" #darkred
#    echo -en "\e]P9ff6767" #red
#    echo -en "\e]P24d4c4c" #darkgreen
#    echo -en "\e]PAb03b31" #green
#    echo -en "\e]P3ff8f00" #brown
#    echo -en "\e]PBbdf13d" #yellow
#    echo -en "\e]P41165e9" #darkblue
#    echo -en "\e]PC5496ff" #blue
#    echo -en "\e]P589005a" #darkmagenta
#    echo -en "\e]PDb50077" #magenta
#    echo -en "\e]P6cb1c13" #darkcyan
#    echo -en "\e]PE6be603" #cyan
#    echo -en "\e]P7ffffff" #lightgrey
#    echo -en "\e]PFdedede" #white
#    clear #for background artifacting
#    LS_COLORS="*.pl=01;35:ow=01;34:no=00:fi=00:di=01;33:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:"
#    export LS_COLORS
#fi
#
eval `keychain -q --eval id_dsa`

TZ='Europe/Stockholm'; export TZ
export HISTFILE=$XDG_DATA_HOME/zsh/history
export HISTSIZE=5000
export SAVEHIST=1000000
export HISTIGNORE="&:ls:[bf]g:exit:reset:clear:cd*"
setopt extended_history
setopt share_history
function history_all { history -E 1 }

setopt notify globdots pushdtohome cdablevars autolist
setopt autocd recexact longlistjobs
setopt autoresume pushdsilent
setopt autopushd pushdminus extendedglob rcquotes mailwarning


setopt print_exit_value

unsetopt bgnice autoparamslash

autoload -U age
autoload -U compinit
compinit

# smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

mailpath=($HOME/Docs/Mail/inbox/new'?New mail in inbox')
# tabcomplete to files as well
compdef _files mkdir

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=10
zstyle ':completion:*' muttrc='$HOME/configs/.muttrc'
zstyle ':completion:*' use-perl=1
zstyle ':completion:*' my-accounts='foo@bar.com'
zstyle ':completion:*:(ssh|scp):*:my-accounts' users-hosts \
  'scp1@192.168.1.100' 'scp1@brutus.ethup.se' 'trapd00r@90.225.22.81'

zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*:cd:*' ignore-parents parent pwd



zstyle ':completion:*:(all-|)files' ignored-patterns '*.un~'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#zstyle ':completion:*:*:kill:*' menu yes select
#zstyle ':completion:*:kill:*'   force-list always




#zstyle ':completion:*' menu select=10 interactive list-dirs-first 
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:processes' command 'ps -axw'
zstyle ':completion:*:processes-names' command 'ps -awxho command'
zstyle ':completion:*' hosts $(awk '/^[^#]/ {print $2 $3" "$4" "$5}' /etc/hosts | grep -v ip6- && grep "^#%" /etc/hosts | awk -F% '{print $2}')
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*:scp:*' tag-order \
zstyle ':completion:*:scp:*' group-order \
zstyle ':completion:*:ssh:*' tag-order \
zstyle ':completion:*:ssh:*' group-order \

bindkey -v
bindkey "^?" backward-delete-char
bindkey "^H" backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey '^r' history-incremental-search-backward
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^W" backward-delete-word
bindkey "^b" backward-word
bindkey "^f" forward-word
bindkey "^d" delete-word
bindkey "^k" kill-line
bindkey ' ' magic-space
bindkey '^I' complete-word
