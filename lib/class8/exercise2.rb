#!/usr/bin/env ruby
#
# 5 points
#
# Extend the previous program so the method accepts a parameter and displays
# it's value before executing the block.
#
# For example:
#
#   $ ruby exercise2.rb
#   Executing the method
#   method_param is dinner
#   Executing the block
#
# TIP: Don't over think this one. The simpler the better.

def follow_the_execution(method_param, &block)
  yield
  puts "method_param is #{method_param}"
  puts 'Executing the block'
  method_param && block 
end

follow_the_execution('dinner') do
  puts 'Executing the method'
end