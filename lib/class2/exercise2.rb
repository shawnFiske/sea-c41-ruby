# 5 points
#
# Assuming leap-years don't exist, display the minutes in a decade.
#
# TIP: I expect you to use a mathematical equation.

years = 10
days = 365
hours_day = 24
minutes_hour = 60

minutes_year = days * hours_day * minutes_hour

total_minutes = years * minutes_year

puts total_minutes
