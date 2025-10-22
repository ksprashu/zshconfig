alias mkdir='mkdir -p -v'
# alias py3="python3"
# alias python="python3"
# alias pip="python3 -m pip"
# alias pip3="python3 -m pip"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias serve='python3 -m http.server 9000'
alias newnode='echo > package.json "{\"dependencies\": {},\"devDependencies\": {}}" && npm install request async bluebird lodash bunyan --save'
alias newmocha='echo > package.json "{\"dependencies\": {},\"devDependencies\": {}}" && npm install request lodash mocha chai --save-dev'
alias pastebin="/google/src/head/depot/eng/tools/pastebin"
alias vsc-restart='systemctl --user restart code-server'

alias gempy='GEMINI_API_KEY=AIzaSyBng0b0DWmUfoYNzouu9VFGK2_R-_nHano python3'

# Aliases from .zshrc
# alias v="nvim"
# alias vi="vim"
# alias vim="nvim"
# alias devsite_codelabs='/google/bin/releases/devrel-codelabs/devsite_codelabs'
# complete -W "create_cl flags help update_cl" devsite_codelabs
# export TENANT="codelabs"
# alias source-devsite='source /google/src/head/depot/google5/devsite/two/tools/aliases.sh'

# Task Master aliases added on 9/4/2025
alias tm='task-master'
alias taskmaster='task-master'


# Alias for ls to enable colors
alias ls="ls -G"
