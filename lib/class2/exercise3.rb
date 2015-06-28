# 5 points
#
# If a person is 1,160,000,000 seconds old, display their age in years. As
# always, assume leap years don't exist.

age_in_seconds = 1_160_000_000
number_days = 365
number_hours_day = 24
number_minutes_hour = 60
number_seconds_minute = 60

age_in_minutes = age_in_seconds / number_seconds_minute
age_in_hours = age_in_minutes / number_minutes_hour
age_in_days = age_in_hours / number_hours_day
age_in_years = age_in_days / number_days

# puts "Person is " + age_in_years.to_s + " years old"

puts age_in_years
