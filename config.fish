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
alias ys="yarn serve"
alias yb="yarn build"
alias vs="cd ~/Homestead/ && vagrant up && vagrant ssh && cd -"
alias vh="cd ~/Homestead/ && vagrant halt && cd -"
alias vr="cd ~/Homestead/ && vagrant reload --provision && cd -"

set -gx PATH $HOME/.bin $PATH

function evaluate --description 'Reset App Evaluation'
  if test (count $argv) -lt 1
    echo 'Reset App Evaluation'
    echo 'Usage: '$_' AffinityPhoto|PhpStorm|UBar|Dock'
    return
  end
  set app (string lower $argv[1])
  switch $app
    case 'affinityphoto'
      killall 'Affinity Photo'
      rm -rf ~/Library/Group\ Containers/6LVTQB9699.com.seriflabs
      rm -f ~/Library/Preferences/com.seriflabs.affinityphoto.plist
      return
    case 'phpstorm'
      killall phpstorm
      rm -rf ~/Library/Application\ Support/JetBrains/PhpStorm*/eval
      sed -i /name=\"evl/d ~/Library/Application\ Support/JetBrains/PhpStorm*/options/other.xml
      return
    case 'ubar'
      rm -f ~/Library/Preferences/ca.brawer.uBar.plist
      return
    case 'dock'
      sudo killall launchservicesd
      sudo killall Dock
      return
    case '*'
      echo 'Unknown App'
  end
end

