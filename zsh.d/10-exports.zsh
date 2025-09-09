# Environment Variables

# From .zprofile
export BROWSER='open'
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'
export LANG='en_US.UTF-8'
export LESS='-g -i -M -R -S -w -X -z-4'
export LESSOPEN="| /usr/bin/env lesspipe.sh %s 2>&-"
export TMPDIR="/tmp/$LOGNAME"
export LDFLAGS="-L/usr/local/opt/curl/lib"
export CPPFLAGS="-I/usr/local/opt/curl/include"

# From .zlocal
if [[ "$(uname)" == "Darwin" ]]; then
  # macOS
  export HOMEBREW_GITHUB_API_TOKEN=$(security find-generic-password -s 'HOMEBREW_GITHUB_API_TOKEN' -a 'ksprashanth' -w)
  export GITHUB_PERSONAL_ACCESS_TOKEN=$(security find-generic-password -s 'GITHUB_PERSONAL_ACCESS_TOKEN' -a 'ksprashanth' -w)
# export GEMINI_API_KEY=$(security find-generic-password -s 'GEMINI_API_KEY' -a 'ksprashanth' -w)
elif [[ "$(uname)" == "Linux" ]]; then
  # Linux
  export GITHUB_PERSONAL_ACCESS_TOKEN=$(pass show GITHUB_PAT)
  export FIRECRAWL_API_KEY=$(pass show FIRECRAWL_API_KEY)
  export CONTEXT7_API_KEY=$(pass show CONTEXT7_API_KEY)
  export GEMINI_API_KEY=$(pass show GEMINI_API_KEY)
fi
# export GOOGLE_API_KEY=$(security find-generic-password -s 'GEMINI_API_KEY' -a 'ksprashanth' -w)
# export GOOGLE_GENAI_USE_VERTEXAI=true 
# export GOOGLE_CLOUD_PROJECT=ksp-sandbox
# export GOOGLE_CLOUD_LOCATION=us-central1
# export VERTEXAI_PROJECT="ksp-sandbox"
# export VERTEXAI_LOCATION="us-east5"

# From .zshrc
export TERM=xterm-256color
export NVIM_PYTHON_LOG_FILE=/tmp/log
export NVM_DIR="$HOME/.nvm"
export GEM_HOME="$HOME/gems"
# export GEMINI_SYSTEM_MD=~/.gemini/SYSTEM.md

# pnpm
export PNPM_HOME="/Users/ksprashanth/Library/pnpm"

