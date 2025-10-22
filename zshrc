# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Zinit installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing Zinit...%f"
    mkdir -p "$HOME/.local/share/zinit"
    git clone https://github.com/zdharma-continuum/zinit.git "$HOME/.local/share/zinit/zinit.git"
    print -P "%F{33}▓▒░ %F{34}Installation successful.%f"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"

# ------------------------------------------------------------------------------
# A clean, fast, and modern Zinit setup
# ------------------------------------------------------------------------------

# The recommended prompt theme: Powerlevel10k
zi light romkatv/powerlevel10k

# Syntax highlighting
zi light zdharma-continuum/fast-syntax-highlighting

# Autosuggestions
zi light zsh-users/zsh-autosuggestions

# Additional completions
zi light zsh-users/zsh-completions

# Better history search
zi light zdharma-continuum/history-search-multi-word

# History substring search
zi light zsh-users/zsh-history-substring-search

# Other popular plugins
zinit light ajeetdsouza/zoxide # A smarter cd command that keeps track of your most-used directories

zinit light junegunn/fzf



# ------------------------------------------------------------------------------
# Your Custom Configuration
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# History Configuration
# ------------------------------------------------------------------------------
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS


# Source all .zsh files from the repo's zsh.d directory
ZSH_SETUP_DIR="$HOME/.zshconfig"
for file in "$ZSH_SETUP_DIR"/zsh.d/*.zsh; do
  source "$file"
done


# To customize prompt, run `p10k configure` or edit ~/.zshconfig/p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Added by Jetski
export PATH="/Users/ksprashanth/.jetski/jetski/bin:$PATH"
