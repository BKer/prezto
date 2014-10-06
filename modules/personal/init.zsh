#
# My personal aliases and functions
#
# Authors:
#  Bart Kerkvliet
#

# cat-like with syntax highlighting
alias c='pygmentize -O style=monokai -f console256 -g'
alias CAT='pygmentize -O style=monokai -f console256 -g'

alias cp="${aliases[cp]:-cp} --reflink=always"

# Use vim as a pager
alias less='/usr/share/vim/vim74/macros/less.sh'

alias mpvfs='mpv --fs'
alias mpvns='mpv --no-audio'

alias openports='netstat --all --numeric --programs --inet'

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
# L = Long(er)
alias pwl='echo `< /dev/urandom tr -cd "[:graph:]" | head -c12`'
alias pwbase='dd if=/dev/urandom bs=6 count=1 2> /dev/null | base64'
# L = Long(er)
alias pwbasel='dd if=/dev/urandom bs=12 count=1 2> /dev/null | base64'

# Systemctl
alias start='sudo systemctl start'
alias stop='sudo systemctl stop'
alias restart='sudo systemctl restart'
alias status='systemctl status'

# VirtualBox
alias vboxmanager='vboxwebsrv --logfile ~/VBoxLog.log --pidfile /run/vboxwebsrv.pid --host 127.0.0.1 & firefox http://localhost/phpvirtualbox'

### Suffix aliases {{{
# Archives
alias -s 7z='atool-l'
alias -s ace='atool -l'
alias -s arj='atool -l'
alias -s bz='atool -l'
alias -s bz2='atool -l'
alias -s gz='atool -l'
alias -s lha='atool -l'
alias -s lzma='atool -l'
alias -s lzo='atool -l'
alias -s rar='atool -l'
alias -s tar.7z='atool -l'
alias -s t7z='atool -l'
alias -s tar='atool -l'
alias -s tar.bz='atool -l'
alias -s tbz='atool -l'
alias -s tar.gz='atool -l'
alias -s tgz='atool -l'
alias -s tar.Z='atool -l'
alias -s tZ='atool -l'
alias -s tar.lz='atool -l'
alias -s tlz='atool -l'
alias -s tar.lzo='atool -l'
alias -s tzo='atool -l'
alias -s tar.xz='atool -l'
alias -s txz='atool -l'
alias -s xz='atool -l'
alias -s zip='atool -l'
# Images
alias -s bmp='feh -FZ'
alias -s gif='animate'
alias -s jpg='feh -FZ'
alias -s jpeg='feh -FZ'
alias -s png='feh -FZ'
# Internet
alias -s html='firefox'
alias -s htm='firefox'
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
function timer() {
  start=`date +%s`
  $*
  stop=`date +%s`

  duration=$[$stop - $start]
  echo "Duration: $duration s"
}

