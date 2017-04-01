function ical
  set days 0
  if count $argv > /dev/null
    set days $argv
  end
  icalBuddy -sc -f -n eventsToday+$days
end
