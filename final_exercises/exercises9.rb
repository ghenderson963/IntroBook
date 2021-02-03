require 'pry'
# use each to iterate over the arr array
arr = [1,2,3,4,5,6,7,8,9,10]
arr.each { |number| puts "#{number}." }

# only print out the values from arr that are greater than 5.
arr.each { |number| puts "#{number}." if number <= 5 }

# use select to only select the odd numbers.
new_arry = arr.select { |number| number.odd? }
puts new_arry
puts arr

# append 11 to the end of arr.  prepend a 0 to the beginning.
arr.push(11)
arr.unshift(0)
arr.pop
arr.push(3)
arr.uniq!

# create a hash with one key-value pair using both styles.
hsh = { name: 'gary' }
hsh = { :name => 'gary'}
puts hsh

# start with hash
h = {a:1, b:2, c:3,d:4}
# get the value of key ':b'.
puts h[:b]
h[:e] = 5
puts h
h.delete_if do |k,v|
    v >= 3.5
end

puts h

# can you have an array of hashes?  show examples
arr = [{name: 'Gary',age: 24,DOB: '092324'},{name: 'Linda',age: 45, DOB: '934434'}]
puts arr

# given the data structures below, write a program that copies the information 
# from the array into the empty hash that applies to the correct person
#
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[0][0]
contacts["Sally Johnson"][:address] = contact_data[0][1]
contacts["Sally Johnson"][:phone] = contact_data[0][2]

# show how to access joe's email and sally's phone number.
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

# Use the delete_if array method and the string method start_with? to delete all of the
# words that begin with a "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?('s') }
puts arr

puts '-----------------------------'
# use the following array and turn it into a new array that consists of strings 
# containing one word.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

new_array = a.map do |word| 
  word.split(' ')
end

puts new_array.flatten

# figure out how to do problem 11 by iterating over the hash or array to 
# populate the contacts.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
elements = [:email, :address, :phone]

contacts.each do |person|
  i = 0
  j = 0
  elements.each do |el|
    person[1][el] = contact_data[j][i]
    i += 1
  end
  j += 1
end
puts contacts




