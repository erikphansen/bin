function wifi -d "Turns WiFi off and on, or toggles it if no args are passed in"
  if count $argv > /dev/null
    networksetup -setairportpower en0 $argv
  else
    set parts (string split " " (networksetup -getairportpower en0))
    if [ $parts[4] = "On" ]
      networksetup -setairportpower en0 off
    else
      networksetup -setairportpower en0 on
    end
  end
end
