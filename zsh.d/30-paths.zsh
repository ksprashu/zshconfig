# Path declarations

# From .zprofile
# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the list of directories that Zsh searches for programs.
path=(
  $HOME/.local/bin
  $HOME/{,s}bin(N)
  /opt/{homebrew,local}/{,s}bin(N)
  /usr/local/go/bin
  /usr/local/{,s}bin(N)
  $path
)

# From .zshrc
export PATH="$HOME/.gem/bin:$PATH"
if [[ "$OSTYPE" == darwin* ]]; then
  export PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:$PATH"
fi

# From .zsh.d/sdks.zsh
# Ruby Gems
export PATH="$HOME/gems/bin:$PATH"

# Google Cloud SDK
if [ -f '/Users/ksprashanth/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ksprashanth/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# Prefer Homebrew Python
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.13/libexec/bin:$PATH"

# pnpm
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
