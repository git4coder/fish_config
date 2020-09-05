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

