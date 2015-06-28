# 5 points
#
# Write a program that displays the following table of contents:
#
#   $ ruby exercise7.rb
#                   Table of Contents
#   Chapter 1:  Getting Started                page  1
#   Chapter 2:  Numbers                        page  9
#   Chapter 3:  Letters                        page 13
#
# TIP #1: The width of each line is 50 characters.
#
# TIP #2: You'll need the following methods:
#
#   string.center(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` centered.
#
#     'bird'.center(10)  #=> '   bird   '
#
#   string.ljust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` left justified.
#
#     'bird'.ljust(10)  #=> 'bird      '
#
#   string.rjust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` right justified.
#
#     'bird'.rjust(10)  #=> '      bird'

line_width = 50
offset = 2
page_text = 'page'

title = 'Table of Contents'

chapter_one = 'Chapter 1:'
chapter_one_title = 'Getting Started'
chapter_one_Page = '1'

one_chapter_one = chapter_one.ljust(chapter_one.length + offset)
two_Chapter_one = chapter_one_title.ljust(one_chapter_one.length)
three_Chapter_one = page_text.rjust(line_width-(one_chapter_one.length + two_Chapter_one.length + chapter_one_Page.length + offset))
four_Chapter_one = chapter_one_Page.rjust(line_width-(one_chapter_one.length + two_Chapter_one.length + three_Chapter_one.length))
chapter_one_Line = one_chapter_one + two_Chapter_one + three_Chapter_one + four_Chapter_one

chapter_two = 'Chapter 2:'
chapter_two_title = 'Numbers'
chapter_two_page = '9'

one_chapter_two = chapter_two.ljust(chapter_two.length + offset)
two_chapter_two = chapter_two_title.ljust(one_chapter_two.length)
three_chapter_two = page_text.rjust(line_width-(one_chapter_two.length + two_chapter_two.length + chapter_two_page.length + offset))
four_chapter_two = chapter_two_page.rjust(line_width-(one_chapter_two.length + two_chapter_two.length + three_chapter_two.length))
chapter_two_Line = one_chapter_two + two_chapter_two + three_chapter_two + four_chapter_two

chapter_three = 'Chapter 3:'
chapter_three_title = 'Letters'
chapter_three_page = '13'

one_chapter_three = chapter_three.ljust(chapter_three.length + offset)
two_Chapter_three = chapter_three_title.ljust(one_chapter_three.length)
three_chapter_three = page_text.rjust(line_width-(one_chapter_three.length + two_Chapter_three.length + chapter_three_page.length + 1))
four_chapter_three = chapter_three_page.rjust(line_width-(one_chapter_three.length + two_Chapter_three.length + three_chapter_three.length))
chapter_three_Line = one_chapter_three + two_Chapter_three + three_chapter_three + four_chapter_three

puts(title.center(line_width))
puts(chapter_one_Line)
puts(chapter_two_Line)
puts(chapter_three_Line)
