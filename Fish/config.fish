# Aliases
alias code 'cd ~/Code'
alias chrome 'open -a /Applications/Google\ Chrome.app --args --incognito'
alias lzd lazydocker
alias lzg lazygit

# Homebrew
eval (/opt/homebrew/bin/brew shellenv)

# Homebrew analytics opt-out
set -x HOMEBREW_NO_ANALYTICS 1

# NodeJS Version Manager
# ~/.config/fish/functions/nvm.fish
function nvm
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

# ~/.config/fish/functions/nvm_find_nvmrc.fish
function nvm_find_nvmrc
  bass source ~/.nvm/nvm.sh --no-use ';' nvm_find_nvmrc
end

# ~/.config/fish/functions/load_nvm.fish
function load_nvm --on-variable="PWD"
  set -l default_node_version (nvm version default)
  set -l node_version (nvm version)
  set -l nvmrc_path (nvm_find_nvmrc)
  if test -n "$nvmrc_path"
    set -l nvmrc_node_version (nvm version (cat $nvmrc_path))
    if test "$nvmrc_node_version" = "N/A"
      nvm install (cat $nvmrc_path)
    else if test "$nvmrc_node_version" != "$node_version"
      nvm use --silent $nvmrc_node_version
    end
  else if test "$node_version" != "$default_node_version"
    # echo "Reverting to default Node version"
    nvm use --silent default
  end
end

# ~/.config/fish/config.fish
# You must call it on initialization or listening to directory switching won't work
load_nvm > /dev/stderr

# Add Homebrew binaries to PATH (usually not needed if brew shellenv works)
fish_add_path /opt/homebrew/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
end
