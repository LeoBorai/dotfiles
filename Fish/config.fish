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
set -gx NVM_DIR "$HOME/.nvm"

function nvm
    bash -c "source $NVM_DIR/nvm.sh; nvm $argv"
end

# Add Homebrew binaries to PATH (usually not needed if brew shellenv works)
fish_add_path /opt/homebrew/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
end
