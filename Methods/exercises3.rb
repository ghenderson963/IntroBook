# Write a program that prints a greet message using a method called greeting that takes a name as its parameter and returns a string.
def greeting(name='Gary')
  puts "Hello #{name}!"
  name
end

greeting()
greeting('Bob')