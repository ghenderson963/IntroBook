# white some code that allows the users to type in their name and then prints out a greating using their name.
puts "What is your first name?"
firstname = gets.chomp
puts "What is your last name?"
lastname = gets.chomp
fullName = firstname + " " + lastname
puts "#{fullName} you are a jerk!"

puts '+++++++++++++++++++++++'
# Write a proggram that asks a user how old they are and then tells them how old they will be in 10, 20, 30, 40 years
puts "How old are you?"
age = gets.chomp.to_i
[10,20,30,40].each do |years| 
  puts "In #{years} years you will be #{years + age}!" 
end

25.times { print "+" }
puts
# print the name of the user 10 times.
10.times { puts fullName }
