function ical
  set days 0
  if test $argv[1]
    set days $argv[1]
  end
  icalBuddy -sc -f -n eventsToday+$days
end
