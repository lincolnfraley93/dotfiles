parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color


# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

PATH="/Users/lincolnfraley/Developer/flutter/bin/:${PATH}"
export PATH

#########
# Aliases
########

alias tw='open -a /Application/TextWrangler.app'
alias hstart="/usr/local/Cellar/hadoop/2.7.3/sbin/start-dfs.sh && /usr/local/Cellar/hadoop/2.7.3/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.7.3/sbin.stop-yarn.sh && /usr/local/Cellar/hadoop/2.7.3/sbin.stop-dfs.sh"
eval $(/usr/libexec/path_helper -s)
alias rmderdata='rm -rf ~/Library/Developer/Xcode/DerivedData'
alias iokidstimeprofile='xcodebuild -workspace ~/Developer/dynepic/ios/ios-apps/Core.xcworkspace -scheme iOKidsNew clean build | grep [1-9].[0-9]ms | sort -nr > culprits.txt'
eval $(thefuck --alias)
alias ll='ls -al'
alias mongo-test='mongo --ssl --sslAllowInvalidCertificates mongodb://testUser:testPassword@sl-us-dal-9-portal.4.dblayer.com:16737/iokids_test_resource_db'
alias mongo-tf='mongo --ssl --sslAllowInvalidCertificates mongodb://ZOkpuFHdyDDbvgk:mVjvBg5PrB23Db1@sl-us-south-1-portal.3.dblayer.com:19252/iokids_resource_db?ssl=true'
alias mongo-sand='mongo --ssl --sslAllowInvalidCertificates mongodb://500tmvgvkt7tcjs7cpx2zu0r:345tr0d9fwn782rvij47cevu@sl-us-south-1-portal.14.dblayer.com:28087/iokids_sandbox_db?ssl=true'
alias and-em='/Users/lincolnfraley/Library/Android/sdk/tools/emulator -avd Nexus_5X_API_23'
alias tsn='ts-node --type-check'
alias lsa='ls -a'
alias vim='nvim'
alias js-lines="find . -name '*.js' | xargs wc -l"
alias ve='virtualenv -p /usr/local/bin/python3'
export PATH="$HOME/.cargo/bin:$PATH"


# Android Config
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# React Config
export REACT_EDITOR=webstorm

# Load nvm
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh 

# for command-t
stty -ixon
