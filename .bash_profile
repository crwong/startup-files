## General outline for .bash_profile, .bashrc, .cshrc
## Christopher Wong
## ----------------

# Determine Git branch name
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# Colored output in terminal
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

# Example: [user]hostname:path (branch)> "
if [ -z $STY ]; then
  PROMPT_USER="\u"
else
  # Display "screen" instead of username when in screen
  PROMPT_USER="${RED}screen${NO_COLOR}"
fi
export PS1="[$PROMPT_USER]\h:\w$YELLOW\$(parse_git_branch)$NO_COLOR> "
export PS1="\[\e]0;[\h] \w\a\]$PS1"

# Add Git auto completion
#source "/path/to/.git-completion.bash"

# Add "./" to the PATH (for easy executable launch)
export PATH="./:$PATH"

## ls Color Scheme (Mac OS X)
# Directories: regular cyan (g)
# Symbolic links: regular magenta (f)
# Executables: regular green (c)
# All else: regular white (x)
# -F: Add suffix after certain file types
# CLICOLOR: Equivalent to -G
export CLICOLOR=1
export LSCOLORS=gxfxxxxxcxxxxxxxxxxxxx
alias ls='ls -F'

## ls Color Scheme
# alias ls='ls -F --color=auto'
# export LS_COLORS 'fi=0:di=36:ln=95:ex=32'

export EDITOR='vi'
set history=100

function repeat() {
  if [ "$#" -lt 2 ]; then
    echo 'Usage: repeat <n> <command...>'
    return
  fi
  # The `|| break` is to exit properly if we press CTRL+'c'.
  for _ in `seq 1 $1`; do
    "${@:2}" || break
  done
}
