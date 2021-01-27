x = gets.chomp.to_i

for i in 1..x do 
    puts i
end

puts "Done!"
puts "-----------------------"
x = [1,2,3,4,5]

for i in x do
    puts i
end

puts "Done!2"
puts "----------------------------"

x = 0

while x <= 10
    if x.odd?
        puts x
    end
    x += 1
end

puts '--------------------------------'

def doubler(start)
    puts start
    if start < 10
        doubler(start * 2)
    end
end

puts doubler(2)

puts '================================='

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)

puts "==================================="

# what does the each method in the following program return afer it is finished 
# executing?
x = [1,2,3,4,5]
x.each do |a|
  a+1
end
# it returns the original each because each always returns the original array

# write a while loop that takes input from the user, performs an action, and only stops when the suer types stop.
loop do
  puts 'What is your name'
  name = gets.chomp
  break if name == "STOP"
  puts name.upcase
end

def count_down(num)
  if num > 0
    puts num
    count_down(num - 1)
  else
    puts num
  end
end

count_down(23)
count_down(-3)

