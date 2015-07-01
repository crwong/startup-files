## General outline for .bash_profile, .bashrc, .cshrc
## Christopher Wong
## ----------------

# "[user]hostname:path> "
export PS1="[\u]\h:\w> "

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

## ls Color Scheme (Other Linux)
# alias ls 'ls -F --color=auto'
# setenv LS_COLORS 'fi=0:di=36:ln=95:ex=32'

set history=100
