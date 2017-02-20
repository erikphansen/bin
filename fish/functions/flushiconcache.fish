function flushiconcache -d 'Fixes incorrect Finder icons'
  # from <http://furbo.org/2015/01/19/clearing-the-icon-services-cache-in-yosemite/>
  sudo find /private/var/folders/ -name com.apple.dock.iconcache -exec rm {} \;
  and sudo find /private/var/folders/ -name com.apple.iconservices -exec rm -rf {} \;
  and sudo rm -rf /Library/Caches/com.apple.iconservices.store
end
