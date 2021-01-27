require 'pry'

puts "put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end

# Write down whether the following expressions return true or false.
puts (32 * 4) >= 129
# false
puts false != !true
# false
puts true == 4
# false
puts false == (847 == '874')
# true
puts (!true || (!(100 / 5) == 20) || ((328 / 4) == 87)) || false
# false

puts "++++++++++++++++++++++++++++++++++++"

# write a method that takes a string.  The method should return a new all-caps version of the string
# only if the string is longer than 10 characters.
def caps(str)
  str.upcase if str.size > 10
end
puts caps(' ')
puts caps(1234)
puts caps("gary henderson")

puts "+++++++++++++++++++++++++++++++++++++++"

# write a program that takes a number from the user between 0 and 100 and reports back
# whether the number is between 0 and 50, 51 and 100, or above 100
num = 0
loop do
  puts "Enter a number between 0 and 100"
  num = gets.chomp.to_i
  break if num < 100 && num > 0
end

case
when num >= 0 && num <= 50
  puts "The number is between 0 and 50!"
when num >= 51 && num <= 100
  puts "The number is between 51 and 100!"
when num > 100
  puts "The number is greater than 100!"
end

# what will each block of code below do?
'4' == 4 ? puts("TRUE") : puts("FALSE")
# this will print FALSE

x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end
# this will print Did you get it right?
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
# this will print Alright now!

# What is wrong with the code below
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)
# it is missing an end to the if block.  you fix it by adding the end as I've 
# above.

# Write what each of the following expressions return
(32 * 4) >= "129" # raises an error32
847 == '874' # false
'847' < '846' # false
'847' > '846' # true
'847' > '8478' # false
'847' < '8478' #true