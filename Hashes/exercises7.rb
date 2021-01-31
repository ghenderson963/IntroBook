hsh = {name: "bob", age: 18}
puts hsh
puts hsh[:name]

# given a hash of family members, with keys as the title and the array of names
# as values, use Ruby's built-in select method to gather only immediate family
# into an array.
family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "david"],
           aunts: ["mary", "sally", "susan"]
         }

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten
puts arr

# What is the difference between the merge method and merge!
# the method merge combines 2 hashes together and returns a new hash of the 
# combination.  The original hashes aren't changed.
hash1 = { name: "Tim", DOB: "09.12.12", }
hash2 = { pet: "dog", dinner: "burger" }
hash1.merge(hash2)
# => {:name=>"Tim", :DOB=>"09.12.12", :pet=>"dog", :dinner=>"burger"}
# if there are duplicate keys the keys of the hash inside the () will be in the 
# new hash.
hash1 = { a: 30, b: 40, c: 50 }
hash2 = { d: 30, e: 41, c: 55 }
hash1.merge(hash2)
# => {:a=>30, :b=>40, :c=>55, :d=>30, :e=>41}
# if there is a block you control with the key which value is used in the 
# new hash.
hash1 = { a: 30, b: 40, c: 50 }
hash2 = { d: 30, e: 41, c: 55 }
hash1.merge(hash2) { |key, hash1val, hash2val| hash1val }
# => {:a=>30, :b=>40, :c=>50, :d=>30, :e=>41}
# the method merge! is distructive to hash1.  It mutates the caller.  It does not
# change the second hash.
hash1 = { name: 'bob', game: 'hockey', }
hash2 = { name: 'doug', job: 'cashier' }
hash1.merge!(hash2)

# write a program that loops though a hash and prints the keys.  then write one
# that prints the values.  Then a program that prints them both.
 hsh = { 
         first_name: 'gary',
         last_name: "smilth",
         city: "london",
         spouse: 'sarah' 
        }
hsh.each { |k,v| puts k }

hsh.each { |k,v| puts "the value is #{v}" }

hsh.each { |k,v| puts "the key is #{k}. The value is #{v}" }

# given the following hash how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

# write a program that finds the a specific value in a hash
hsh = { 
    name: "sue",
    city: "anchorage"
    hair: "black"
}

hsh.value?('anchorage')

# Given an array
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# write a program that prints out groups of words that are anagrams.
# algorithm
# create a string called alpha which is a..z
# iterate through the words array.  
# for each word calculate the sum of the letters/alpha
# if a key exists for that number add the work to it.
# print out the values to an array for each key

number_word = {}
alpha = ('a'..'z').to_a

words.each do |word|
  sum = 0
  word.chars.each { |char| sum += alpha.index(char) }
  if number_word.key?(sum)
    number_word[sum] << word
  else
    number_word[sum] = [word]
  end
end

number_word.values.each { |list| p list }
