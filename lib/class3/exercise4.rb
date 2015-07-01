# 5 points
#
# Write a program that displays all the leap years between 1900 and 2000.
#
# Leap years are years divisible by 4 (e.g. 1984).
#
# Years divisible by 100 are not leap years (e.g. 1900) unless they are also
# divisible by 400 (e.g. 2000).
#
# TIP: I expect you to use a loop and a few modulo operations.

start_year = 1900
end_year = 2000
current_year = start_year

while current_year <= end_year

  current_year += 1

  if current_year % 4 == 0 &&
    (current_year % 100 != 0 ||
    current_year % 400 == 0)
    # puts "Leap Year: #{current_year}"
    puts current_year.to_s
  end

end
