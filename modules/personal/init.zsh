#
# My personal aliases and functions
#
# Authors:
#  Bart Kerkvliet
#

# cat-like with syntax highlighting
alias c='pygmentize -O style=monokai -f console256 -g'
alias CAT='pygmentize -O style=monokai -f console256 -g'

# Use vim as a pager
alias less='/usr/share/vim/vim74/macros/less.sh'

alias openports='netstat --all --numeric --programs --inet'

alias mpvfs='mpv --fs'
alias mpvns='mpv --no-audio'

# Power management
if [[ $UID != 0 ]]; then
  alias hibernate='sudo systemctl hibernate'
  alias reboot='sudo systemctl reboot'
  alias shutdown='sudo systemctl poweroff'
  alias suspend='sudo systemctl suspend'
  alias hybrid-sleep='sudo systemctl hybrid-sleep'
fi

# "Security"
alias pw='echo `< /dev/urandom tr -cd "[:graph:]" | head -c8`'

# VirtualBox
alias vboxmanager='vboxwebsrv --logfile ~/VBoxLog.log --pidfile /run/vboxwebsrv.pid --host 127.0.0.1 & firefox http://localhost/phpvirtualbox'

### Suffix aliases {{{
# Images
alias -s bmp='feh'
alias -s gif='animate'
alias -s jpg='feh'
alias -s jpeg='feh'
alias -s png='feh'
## LibreOffice
# Word formats
alias -s doc='libreoffice'
alias -s docx='libreoffice'
alias -s ppt='libreoffice'
alias -s pptx='libreoffice'
alias -s xls='libreoffice'
alias -s xlsx='libreoffice'
# Open Document Format
alias -s odb='libreoffice'
alias -s odf='libreoffice'
alias -s odg='libreoffice'
alias -s odp='libreoffice'
alias -s ods='libreoffice'
alias -s odt='libreoffice'
# Music
alias -s flac='mpv'
alias -s mp3='mpv'
alias -s ogg='mpv'
# Web
alias -s com='firefox'
alias -s net='firefox'
alias -s org='firefox'
alias -s nl='firefox'
# Others
alias -s pdf='zathura'
### Suffix aliases }}}


### Functions
# Just for convenience
function start() {
  sudo systemctl start $@
}

function stop() {
  sudo systemctl stop $@
}

function restart() {
  sudo systemctl restart $@
}

function timer() {
  start=`date +%s`
  $*
  stop=`date +%s`

  duration=$[$stop - $start]
  echo "Duration: $duration s"
}


