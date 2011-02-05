#vim: textwidth=0 nowrap ts=2:
alias -s {pl,pm,c,cpp,h,sh}='vim'
alias -s {mkv,avi}='mplayer'
alias -s PKGBUILD='vim'

alias today="echo *(e:age today now:)|perl -pe 's/ /\n/g'"
alias hour=" echo *(e-age $(date +%H:00) now-)|perl -pe 's/ /\n/g'"

alias upstream='cd $HOME/bin/upstream && git-rec -d . -c pull -b master'
alias gcc='gcc -ansi -pedantic -Wall'
alias editc='vim $HOME/.zsh/colors.zsh $HOME/devel/File::LsColor/lib/File/LsColor.pm'
alias pc='perlcritic'
#alias perl583='/home/scp1/perl5/perlbrew/build/perl-5.8.3/perl'
alias pkgclean="yes|rm -r $(find $HOME/devel/PKGBUILDS -name 'pkg' && find $HOME/devel/PKGBUILDS -name 'src')"
alias devel='echo http://perl.japh.se/devel && echo http://perl.japh.se/devel|xclip'
alias i='echo http://i.japh.se && echo http://i.japh.se|xclip'
alias l='echo http://l.japh.se && echo http://l.japh.se|xclip'
alias japh='echo http://japh.se && echo http://japh.se|xclip'
alias pst='echo http://p.japh.se && echo http://p.japh.se|xclip'
alias todo='$HOME/devel/time-spent-in-vim/vim $HOME/doc/TODO'

alias dmesg='$HOME/devel/Term::ExtendedColor/bin/colored_dmesg|grep -v TCP'
alias vimtime='/home/scp1/devel/time-spent-in-vim/vim --total'
alias vim='/home/scp1/devel/time-spent-in-vim/vim'

alias wmp='wminput -c mplayer&'
alias win='wminput -c ir_ptr -w -c neverball&'
alias wir='wminput -c ir_ptr -w -c ir_ptr&'
alias wim='wminput -c ir_ptr -w -c buttons-mame&'
alias wig='wminput -c gamepad&'
alias wit='wminput -c buttons-term&'

alias vimsh='vim *.sh'
alias vimpm='vim *.pm'
alias vimpl='vim *.pl'

alias urxvt='urxvt -name URxvt.shiva'

alias repl='perl $HOME/devel/App::re.pl/re.pl'
alias less='vimpager'
alias wget='wget --no-check-certificate -U=Mozilla'
alias ptop='watch -n1 ps aux --sort=+%cpu'
alias tree='tree -dA'
alias mem='su -c mem'
alias npd='srinfo -np'
alias scat='source-highlight -o STDOUT -f esc -i'
alias ss='source $HOME/configs/.zshrc'
alias sortbycolumn='sort -n -k3'
alias scp='scp -P 19216'
alias rmvi='rm *.sw*'
alias R='rehash'
alias qi='qemu -cdrom iso -boot d hd'
#alias share='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias share='perl $HOME/devel/CPAN::Mirror::Server::HTTP/bin/cpanmirrorhttpd -root . -port 8080 --verbose'
alias get='woof -u -U -i 0.0.0.0 -p 4040'
alias put='woof -u -i 0.0.0.0 -p 4040'
alias shiva='ps -eo pcpu,pid,user,args|sort -k 1 -r|head -10 && iostat -mtx && mpstat -P 'ALL' && sar'
alias cpuu='ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10'
alias memusage='ps -e -orss=,args= | sort -b -k1,1n|pr -TW$COLUMNS'
alias trapd00r='printf "\t\033#3trapd00r\n\t\033#4trapd00r\n\tA simple, lightweight Perl hacker\n"'
alias trapd00rc='printf "\t\033#3\e[38;5;25mt\e[38;5;26mr\e[38;5;27ma\e[38;5;31mp\e[38;5;32md\e[38;5;33m0\e[38;5;33m0\e[38;5;37mr\n\t\033#4\e[38;5;133mt\e[38;5;134mr\e[38;5;135ma\e[38;5;139mp\e[38;5;140md\e[38;5;141m00\e[38;5;145mr\n\t\e[38;5;240mA simple, lightweight Perl hacker\n"'
alias reset='printf "\033c\033(K\033[J\033[0m\033[?25h"'
alias rm='rm -v'
alias prename='prename -v'
alias np='pimpd -i'

alias ssh='ssh -p 19216'
alias scp='scp -P 19216'

alias brutus='ssh scp1@brutus.ethup.se'
alias macosx='ssh trapd00r@90.225.22.81'
alias macoss='ssh scp1@industrialrefuge.com'
alias india='ssh scp1@192.168.1.102 -p 19216'
alias dvdc='ssh scp1@192.168.1.100 -p 19216'
alias n900='ssh -p 19216 user@192.168.1.112'


alias 1='printf "\e]710;%s\007" "9x15bold,xft:Kochi Gothic"'
alias 2='pickyfont -f speedy2'
alias 3='pickyfont -f progsole'
alias pf='pickyfont ter7'
alias f='pickyfont monte1 normal && pickyfont monte2 bold && pickyfont pro1 italic'
alias jj='pickyfont -f terminus2'
alias j='pickyfont -f terminus1'
alias k='pickyfont -f proggy1'
alias lll='pickyfont -f profont4'
alias ll='pickyfont -f profont2'
alias hh='pickyfont -f fixed7'
alias kk='pickyfont -f clea3'

alias pdb='perl -d -e 1'
alias pacman='packer'
alias mv='mv -v'
alias mp='mplayer -slave -input file=$HOME/.mplayer/fifo -msgcolor'
alias ssa='mpc search artist'
alias t='mkdr /tmp/scp1 ; cd /tmp/scp1'
alias iostat='iostat -mtx'

alias grepp='grep -Pi --color=auto "^|pimpd"'
alias grep='grep -Pi --color=auto'

alias gs='git-ach status'
alias gp='git-ach push'
alias gd='git-ach diff'
alias gc='git-ach commit'
alias git='git-ach'
alias gl='PAGER=less;git-ach log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%an %cr)%Creset" --abbrev-commit --date=relative'
alias glp='gl -p'

alias getmail='getmail --rcfile /home/scp1/.getmail/magnus_at_trapd00r.se && getmail --rcfile /home/scp1/.getmail/trapd00r_at_trapd00r.se'
alias fevil='find . -regextype posix-extended -regex'
alias lsd='find . -maxdepth 2 -type d | sort'
alias rec='ffmpeg -f x11grab -s 3360x1050 -r 150 -i :0.0 -sameq /tmp/foo.mpg'
alias feh='feh -Fzrd'
alias mountfixbug='echo 64 > /sys/block/sdn/device/max_sectors && mount -a'
alias rampeak='dd if=/dev/mem|\cat|strings'
alias cp='cp -v'
alias sf='chmod +t,o+w "$@"'

alias lsc='cd $HOME/devel/File::LsColor'
alias xx='cd $HOME/devel/Xorg::XLFD'
alias x='cd $XDG_CONFIG_HOME'
alias n='cd $HOME/httpd/NEWtrapd00r.se/all'
alias u='cd $HOME/devel/utils'
alias a='cd $HOME/devel/App::Autotest'
alias h='cd $HOME/devel/trapd00r.se'
alias r='perl $HOME/devel/App::Rel/rel'
alias o='cd $HOME/devel/App-RPD'
#alias m='cd $HOME/devel/pimpd/pimpd-ng'
alias pp='cd $HOME/devel/App::Pimpd'
alias p='cd $HOME/devel/App::Pimpd_Legacy'
alias q='cd $HOME/devel/App::Pickyfont'
alias te='cd $HOME/devel/Term::ExtendedColor'
alias tet='cd $HOME/devel/Term::ExtendedColor::TTY'
alias tex='cd $HOME/devel/Term::ExtendedColor::Xresources'
alias mpp='cd $HOME/devel/Mplayer::NowPlaying'
alias dm='cd $HOME/devel/Daemon::Mplayer'
alias ty='cd $HOME/devel/App::Ttycolor'
#alias l='cd $HOME/devel/lib'
#alias i='cd $HOME/devel/fetchit'
#alias e='cd $HOME/devel/exercises'
#
alias d='cd $HOME/devel'
alias c='cd $HOME/configs'
alias b='cd $HOME/bin'
alias g='cd $HOME/Git'
alias z='cd $HOME/.zsh'

alias lso='ls|pv -qL 10'
alias lsusb='lsusb|matchline -random'
alias lspci='lspci|matchline -lspci'
alias ls='ls++'
alias lsq='ls -AlQ --color=always --time-style=full-iso'
alias lsl='\ls -Ah --time-style=full-iso --color=auto --group-directories-first'
alias lss='\ls -1 --color=auto|grep "(^\w*[^_-])"'
alias ls1='\ls -1 --color=auto --time-style=full-iso'
alias lsa='\ls --color=auto --time-style=full-iso'

alias scx='TERM=xterm;screen -x'

alias top='cc-grey-ansi;top;cc-x-color-scheme-trapd00r'
alias ncmpcpp='colorcoke -r 30 -g 10 -b 5 -s 0 -e 15;ncmpcpp; cc-x-color-scheme-trapd00r'


alias make='/home/scp1/devel/utils/make'
alias wimp='(wminput -c mplayer&); mplayer'

alias ps='$HOME/bin/cope/ps'
alias nmap='$HOME/bin/cope/nmap'
alias netstat='$HOME/bin/cope/netstat'
alias ifconfig='$HOME/bin/cope/ifconfig'
alias free='$HOME/bin/cope/free'
alias fdisk='$HOME/bin/cope/fdisk'
alias df='$HOME/bin/cope/df'
alias cat='v'

alias v+='ossmix vmix0.pcm8 -- +2'
alias v-='ossmix vmix0.pcm8 -- -2'
alias v++='ossmix vmix0.pcm9 -- +2'
alias v--='ossmix vmix0.pcm9 -- -2'

alias mplayer='mplayer -msgmodule 1 -msgcolor'
alias :q='exit'
