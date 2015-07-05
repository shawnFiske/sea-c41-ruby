#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that asks the user to type in words to be sorted alphabetally.
# The user will type one word per line, continuing until `Enter` is pressed on
# an empty line.
#
# Then, the program will display the words back to the user in alphabetical
# order.
#
# Here's an example of how the program should behave:
#
#   $ ruby exercise1.rb
#   Type some words to be sorted alphabetically:
#   banana
#   apple
#   cherry
#
#   Sweet! Here they are in alphabetical order:
#   apple
#   banana
#   cherry
#
# Make sure to test your program thoroughly. For example:
#
# - Does hitting `Enter` on an empty line always exit your program?
# - Even on the first line?
# - And the second?
#
# TIP: Your program must use the following method:
#
#   array.sort  #=> Array
#
#     Returns a new Array created by sorting `array`.
#
#     ['cat', 'bird'].sort  #=> ['bird', 'cat']

word_wrray = []
puts 'Type some words to be sorted alphabetically:'

loop do
  word = gets.chomp.downcase
  if word == '' && word_wrray.length < 1
    p 'there were no words in your list\n'
    break
  end

  if word == '' && word_wrray.length > 1
    p 'Sweet! Here they are in alphabetical order:'
    sorted_array = word_wrray.sort
    puts sorted_array
    break
  else
    wordArray.push(word)
  end
end
