# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# Pretty print the path
alias path="echo $PATH | tr -s ':' '\n'"

# Get week number
alias week='date +%V'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="/sbin/ifconfig | grep \"inet \" | grep -v 127.0.0.1 | cut -d ' ' -f2" #"ipconfig getifaddr en1"
alias macaddress="/sbin/ifconfig | grep en0 -B 10 | grep ether | cut -d ' ' -f2"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Projects
alias ss="c SameSystem/samesystem"

alias testas="cd ~/quest && clear && ruby parser.rb"

# OS X restarts
alias rrfinder="killall -KILL Finder"
alias rrdock="killall -KILL Dock" # launchctl stop com.apple.Dock.agent
alias rrmenubar="killall -KILL SystemUIServer"

# Merge PDF
# Usage: mergepdf /PATH/TO/FILE/1.pdf /PATH/TO/FILE/2.pdf /PATH/TO/A/WHOLE/DIR/*.pdf
alias mergepdf="/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py -o ./merged_document.pdf"

alias hgr='$(history 1 | sort -ur | cut -c8- | pick)'
alias hg="history 1 | grep"
