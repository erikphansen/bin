function ical
  set days 0
  if test $argv
    set days $argv
  end
  icalBuddy -sc -f -n eventsToday+$days
end
