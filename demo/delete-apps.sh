cf apps | grep started | awk '{print $1}{system("cf sp " $1)}'
cf apps | grep stopped | awk '{print $1}{system("cf d -f -r " $1)}'
cf delete-orphaned-routes -f
