# check to see if the number appears in the array
number = 3
arr = [1,3,5,7,9,11]
puts arr.include?(number)


# what do the following programs return? 
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
 # this will return the deleted element 1
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)
# this will return the deleted element [1,2,]

# How do you return the work "example" from the array?
arr = [["test","hello", "world"],["example", "mem"]]
puts arr[1][0]
puts arr.last.first

# What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

puts arr.index(5)
# the index of the number 5 which is 3
#puts arr.index[5]
# error
puts arr[5]
# the number in the 5th index which is 8

# What is the value of a, b, c
string = "Welcome to America!"
puts a = string[6]  # e
puts b = string[11] # A
puts c = string[19] # nil

# what is wrong with the following code?
names = ["bob", "joe","susan","margaret"]
# names["margaret"] = 'jody'
# you need to have an integer number in the index.  if you want to change 
# the name margaret to jody in the array you could do 
names[3] = 'jody'
puts names

# use the each_with_index method to iterate through an array and print each index
# and value
arr = ['gary', 'leah', 'lyla', 'bob', 'sanders']
arr.each_with_index { |name, idx| puts "the index is #{idx} the name is #{name}" }

# write a program that iterates over an array and builds a new array that is the result
# of incrementing each value in the original array by a value of 2.
# print both arrays using p rather than puts
arr1 = [1,2,3,4,5,6,7,8]
arr2 = []
arr1.each do |num|
  arr2 << num + 2
end

p arr1
p arr2