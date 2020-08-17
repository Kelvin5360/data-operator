# data-operator
job scheduler keep track of data dependency

1. Allow define job (name, job triggering url, Cron, Depends-on)
2. Throttle job triggering every 5 second when same data type changes multiple time
