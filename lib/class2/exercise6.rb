# 5 points
#
# Write an angry boss program that rudely asks what you want. Whatever you
# answer, the angry boss must yell it back to you and then fire you.
#
# Here's how the program must work:
#
#   $ ruby exercise6.rb
#   CAN'T YOU SEE I'M BUSY?! MAKE IT FAST, JOHNSON!
#   i want a raise
#   WHADDAYA MEAN 'I WANT A RAISE'?!? YOU'RE FIRED!!

boss_ask = "CAN'T YOU SEE I'M BUSY?! MAKE IT FAST, JOHNSON!"

puts boss_ask

your_response = gets.chomp

boss_response = "whaddaya mean \'#{your_response}\'?!? you're fired!!"
boss_yell_response = boss_response.upcase

puts boss_yell_response
