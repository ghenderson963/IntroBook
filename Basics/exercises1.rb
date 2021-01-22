# 1. add 2 strings together that return your first and last name
puts "Gary" + " " + "Henderson"

# 2. Use the modulo operator, division, or both to find the digit in the 1. thousands
#    2. hundreds 3. tens 4. ones for 4321
# thousands
puts "The digit in the thousands place is: #{4321 / 1000}"
# hundreds
puts "The digit in the hundreds place is: #{4321 % 1000 / 100}"
puts "The digit in the tens place is: #{4321 % 100 / 10}"
puts "The digit in the ones place is: #{4321 % 10}" 

# write a program that uses a hash to store movies and the date they came out then print the dates.
hsh = {1981 =>'bladerunner', 1978 => 'animal house',2000 => 'tango and cash'}
puts hsh.keys

# store the dates above in an array and create the same output
