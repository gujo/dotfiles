# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

source ~/.bash_prompt

# User specific environment and startup programs
export PATH="/usr/local/homebrew/sbin:$PATH"
