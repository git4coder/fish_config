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
alias gp="git pull --rebase"
alias gs="git status"
alias gb="git branch -a"
alias god="git checkout develop"
alias gom="git checkout master"
alias ga="git add"
alias gc="git commit"
alias gca="git commit --amend"
alias gac="git add . && git commit -m"
alias gu="git pull --rebase && git push"
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
alias xp="VBoxManage startvm e82d8b13-fca2-4523-943e-c7564e26b6c4"
alias w7="VBoxManage startvm bc76aad9-ad97-470a-9f5a-3ce2f164a79d"
alias bf="sudo bclm write 100"
alias b7="sudo bclm write 75"
alias weekly="git log --author=yanghefeng --pretty=format:'%cd - %s' --date='format-local:%Y/%m/%d' --abbrev-commit --since=6.days --reverse"
alias du=gdu
alias sail='sh vendor/bin/sail'
alias systemctl='brew services'
alias dqr="pngpaste - | zbarimg -q PNG:- | awk -F 'QR-Code:' '{print $2}'"

#set -x  LANG en_US.UTF-8
set -x  ANDROID_HOME $HOME/Library/Android/sdk
set -gx PATH $PATH $HOME/.bin $ANDROID_HOME/tools $ANDROID_HOME/tools/bin $ANDROID_HOME/platform-tools
#set -gx PATH $PATH $HOME/.bin ~/Applications/flutter/bin

#set -x PUB_HOSTED_URL           https://pub.flutter-io.cn
#set -x FLUTTER_STORAGE_BASE_URL https://storage.flutter-io.cn

set -x HOMEBREW_API_DOMAIN      https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api
set -x HOMEBREW_BOTTLE_DOMAIN   https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
set -x HOMEBREW_BREW_GIT_REMOTE https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git
set -x HOMEBREW_CORE_GIT_REMOTE https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git
set -x HOMEBREW_PIP_INDEX_URL   https://pypi.tuna.tsinghua.edu.cn/simple

# https://github.com/jorgebucaran/nvm.fish
set --universal nvm_default_version v16
set --universal nvm_default_packages yarn

eval (gdircolors -c ~/.dir_colors)
