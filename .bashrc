# Show git branch name
force_color_prompt=yes
color_prompt=yes
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# only show CWD on terminal (https://www.howtogeek.com/307701/how-to-customize-and-colorize-your-bash-prompt/)
# https://askubuntu.com/questions/896445/prompt-doesnt-update-git-branch
export PS1='\[\033[32m\][\d \t]\[\033[1;34m\] \W\[\033[1;35m\]$(parse_git_branch)\[\033[1;34m\] $\[\033[0;37m\] '

# Use Vim
export VISUAL=vim
