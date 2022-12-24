alias zc='z -c' # 严格匹配当前路径的子路径
alias zz='z -i' # 使用交互式选择模式
alias zf='z -I' # 使用 fzf 对多个结果进行选择
alias zb='z -b' # 快速回到父目录
alias emu="$ANDROID_HOME/tools/emulator"
alias dl="axel -ak"
alias ls="gls -hF --color"
alias ll="ls -l --time-style=long-iso"
alias bye="exit"
alias port="lsof -i"
alias tree="tree -aNFA --dirsfirst"
alias ip="ifconfig | grep 'inet ' && ifconfig | grep 'inet6'"
alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../"
alias cd..="cd .."
alias b="cd -"
alias ra="react-native run-android"
alias ri="react-native run-ios --simulator 'iPhone 7'"
alias ns="npm start"
alias nb="npm run build"
alias gp="git pull"
alias gs="git status"
alias gb="git branch -a"
alias go="git checkout"
alias god="git checkout develop"
alias gom="git checkout master"
alias ga="git add"
alias gc="git commit"
alias gca="git commit --amend"
alias gac="git add . && git commit -m"
alias gu="git push"
alias guf="git push -f"
alias gl="git lg1"
alias gf="git fetch"
alias gr="git remote -v"
alias gm="git merge"
alias y="yarn"
alias ys="yarn serve"
alias vs="cd ~/Homestead/ && vagrant up && vagrant ssh && cd -"
alias vh="cd ~/Homestead/ && vagrant halt && cd -"
alias vr="cd ~/Homestead/ && vagrant reload --provision && cd -"

set -x  ANDROID_HOME $HOME/Library/Android/sdk
set -gx PATH $PATH $HOME/.bin ~/Applications/flutter/bin $ANDROID_HOME/tools $ANDROID_HOME/tools/bin $ANDROID_HOME/platform-tools
#set -gx PATH $PATH $HOME/.bin ~/Applications/flutter/bin

set -x PUB_HOSTED_URL           https://pub.flutter-io.cn
set -x FLUTTER_STORAGE_BASE_URL https://storage.flutter-io.cn

