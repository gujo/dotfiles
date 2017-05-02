# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

source ~/.bash_prompt

# User specific environment and startup programs
export PATH="/usr/local/homebrew/sbin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/johan/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/johan/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/johan/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/johan/Downloads/google-cloud-sdk/completion.bash.inc'; fi
