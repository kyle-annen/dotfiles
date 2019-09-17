rvm default
set -gx HOMEBREW_GITHUB_API_TOKEN your_token_here
set -gx HOMEBREW_GITHUB_API_TOKEN your_token_here
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent
