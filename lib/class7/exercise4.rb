#!/usr/bin/env ruby
#
# 5 points
#
# Copy the previous OrangeTree class and replace the following method:
#
#   OrangeTree#initialize(fruit = 50)
#
#     Sets it's `@fruit` instance variable to the `fruit` parameter, which
#     defaults to 50.
#
#     orange_tree = OrangeTree.new
#     orange_tree.fruit  #=> 50
#
#     orange_tree = OrangeTree.new(20)
#     orange_tree.fruit  #=> 20
#
# And extend the OrangeTree class with the following method:
#
#   OrangeTree#==(other) #=> true or false
#
#     Given another object, returns `true` if both objects have the same amount
#     of `fruit`. Otherwise, returns `false`.
#
#     OrangeTree.new(20) == OrangeTree.new(20)
#     OrangeTree.new(20) != OrangeTree.new(10)

# rubocop:disable TrivialAccessors
class OrangeTree
  attr_accessor :fruit, :pick, :other

  def initialize(fruit = 50)
    @fruit = fruit
  end

  def pick!(amount = 1)
    self.fruit = self.fruit - amount
  end

  def other(tree)
    self.fruit === tree.fruit
  end
end

orange_tree = OrangeTree.new(20)
orange_tree2 = OrangeTree.new(10)

puts orange_tree.other(orange_tree2)
puts orange_tree.fruit
#range_tree.pick
puts orange_tree.fruit
