#!/usr/bin/env ruby
#
# 5 points
#
# The following five methods must be fixed:
#
#   Integer#hours_in_seconds #=> Integer
#
#     Returns the number of hours converted to seconds.
#
#     10.hours_in_seconds  #=> 36_000
#
#   String#indent(amount = 2) #=> String
#
#     Returns `amount` spaces plus the String. The default `amount` is 2.
#
#     'foo'.indent     #=> '  foo'
#     'foo'.indent(3)  #=> '   foo'
#
#   Integer#to_roman => String
#
#     Returns the roman numeral equavilent of the arabic number.
#
#     1999.to_roman  #=> 'MCMXCIX'
#
#   Array#second #=> Object
#
#     Returns the second element of the Array.
#
#     [10, 20, 30].second  #=> 20
#
#   Array#third #=> Object
#
#     Returns the third element of the Array.
#
#     [10, 20, 30].third  #=> 30
#
# HINT: Remember to use `self` to access the receiver object of the method
#
#     class Integer
#       def plus_forty_two
#         self + 42
#       end
#     end
#
#     1.plus_forty_two  #=> 43

class Integer
  def hours_in_seconds
    self * 60 * 60
  end
end

class String
  def indent(amount = 2)
    (' ' * amount)+self
  end
end

class Integer
  # rubocop:disable MethodLength
  def to_roman
    num = self
    numerals_array = [[1000, 'M'],
                      [500, 'D'],
                      [400, 'CD'],
                      [100, 'C'],
                      [90, 'XC'],
                      [50, 'L'],
                      [40, 'XL'],
                      [10, 'X'],
                      [9, 'IX'],
                      [5, 'V'],
                      [4, 'IV'],
                      [1, 'I']]

    numeral_array = []

    numerals_array.each do |value|
      if num / value[0] > 0
        numeral_array << value[1] * (num / value[0])
        num = num % value[0]
      end
    end
    numeral_array.join('')
  end
end

class Array
  def second
    self.at(1)
  end

  def third
    self.at(2)
  end
end
