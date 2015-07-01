# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

is_greeting = true
num_byes = 3
current_byes = 0
exit = 'BYE'

while current_byes < 3

  if is_greeting
    is_greeting = false
    puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
  end

  you_said = gets.chomp

  if you_said == exit

    current_byes += 1

    if current_byes >= num_byes
      puts 'Nana: BYE SWEETIE!'
      break
    end
    puts 'Nana: HOW\'S SCHOOL GOING?'

  end

  if you_said == you_said.upcase && you_said.upcase != exit
    current_byes = 0
    puts "Nana: NOT SINCE #{(rand(1951 - 1930) + 1930)}!"
  elsif you_said != exit
    current_byes = 0
    puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
  end

end
