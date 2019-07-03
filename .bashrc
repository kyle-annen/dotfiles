
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#xcode path
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"

export EDITOR='vim'
export TERM=screen-256color

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f $HOME/.bash_aliases ]
then
  . $HOME/.bash_aliases
fi

# weather app
alias weather='curl wttr.in/'

# added by travis gem
[ -f /Users/kyleannen/.travis/travis.sh ] && source /Users/kyleannen/.travis/travis.sh

# git aliases
alias gpoh="git push origin head"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gs="git status"
alias gswitch="git checkout -"
alias gcm="git add -A && git commit -m"
alias gfiles="git diff-tree --no-commit-id --name-only -r head"
alias tkill="pkill -f tmux"

# ideo project aliases
alias android="cd ~/code/ideo/wilson-android"
alias coaches="cd ~/code/ideo/wilson-coaches"
alias content="cd ~/code/ideo/wilson-content"
alias data="cd ~/code/ideo/wilson-data"
alias mobile="cd ~/code/ideo/wilson-mobile"
alias ops="cd ~/code/ideo/wilson-ops"
alias server="cd ~/code/ideo/wilson-server"

# tmuxinator aliases
alias zagaku="tmuxinator zagaku"
alias consumer-data="tmuxinator consumer-data"

gitignore() {
  for arg in "$@"
  do
    echo "$arg" >> .gitignore
  done
}

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias gitlog="git log --graph --full-history --all --color --pretty=format:'%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s'"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
