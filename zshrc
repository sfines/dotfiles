source /Users/stevefines/dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle command-not-found
antigen bundle nojhan/liquidprompt

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/stevefines/Downloads/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/stevefines/Downloads/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/stevefines/Downloads/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/stevefines/Downloads/google-cloud-sdk/completion.zsh.inc'
fi

export PATH=/Library/TeX/texbin:/Users/stevefines/anaconda/bin:$PATH
export VIRTUALENVWRAPPER_PYTHON=/Users/stevefines/anaconda/bin/python
export VIRTUALWRAPPER_VIRTUALENV=/Users/stevefines/anaconda/bin/virtualenv

export WORKON_HOME=/Users/stevefines/anaconda/envs

source /Users/stevefines/anaconda/bin/virtualenvwrapper.sh
