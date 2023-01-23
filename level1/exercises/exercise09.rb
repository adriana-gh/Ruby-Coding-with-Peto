#~ exercise:
# -> ask the user for two numbers (you can assume the second one will be greater than the first)
# -> using a range, check if the number 42 is between those two numbers

puts 'Add two numbers and I will tell you if no. 42 is in the range'
s=gets.chomp.to_i
e=gets.chomp.to_i
r=s..e
puts r.include?(42)


