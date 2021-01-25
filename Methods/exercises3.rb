# Write a program that prints a greet message using a method called greeting that takes a name as its parameter and returns a string.
def greeting(name='Gary')
  puts "Hello #{name}!"
  name
end

greeting()
greeting('Bob')

25.times { print '+' }
puts ''

# What do the following expressions evaluate to?
 x = 2
 # => 2
puts x = 2
# nil
p name = 'joe'
# "joe"
four = 'four'
# 'four'
print something = "nothing"
# =>nil 

25.times { print '+' }
puts ''

# write a program that includes a method called multiply that takes 2 arguments and returns the product
def multiply(x=0, y=0)
    x * y
end

puts multiply()
puts multiply(1,1)
puts multiply(-1,23)

25.times { print '+' }
puts ''

# what does the following code print to the screen
def scream(words)
    words = words + "!!!!"
    return
    puts words
  end
  
  scream("Yippeee")
  # it doesn't print anything to the screen because it returns before the puts is issued 
  
25.times { print '+' }
puts ''

# what does the following error mean?
# it means that you called in the method definition for 2 arguements but when you called the method you only supplied one

