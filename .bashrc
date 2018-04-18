
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

# ssh aliases
alias consumer-utility1="ssh consumer_deploy@consumer-data-service-utility1-emea-staging.snc1"
alias consumer-utility2="ssh consumer_deploy@consumer-data-service-utility2-emea-staging.snc1"
alias consumer-app1="ssh consumer_deploy@consumer-data-service-app1-emea-staging.snc1"


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
