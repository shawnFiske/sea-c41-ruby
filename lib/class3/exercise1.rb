# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.

beers = 3
curr = beers

beers.times do

  if curr == 1
    puts "#{curr} bottle of beer on the wall, #{curr} bottle of beer!"
  else
    puts "#{curr} bottles of beer on the wall, #{curr} bottles of beer!"
  end

  curr -= 1

  if curr == 0
    puts 'Take one down, pass it around, no more bottles of beer on the wall!'
  else
    if curr == 1
      puts "Take one down, pass it around, #{curr} bottle of beer on the wall!"
    else
      puts "Take one down, pass it around, #{curr} bottles of beer on the wall!"
    end
  end

end

puts 'No more bottles of beer on the wall, no more bottles of beer!'
puts "Go to the store and buy some more, #{beers} bottles of beer on the wall!"
