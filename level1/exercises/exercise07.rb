#~ exercise:
# -> ask the user for any positive integer smaller than 100 (you can assume the user will follow instructions)
# -> use `while` to print out all odd numbers between 0 and the number
# -> use `until` to print out all even numbers between 0 and the number
# -> use `loop` to print out all numbers between 0 and the number that are smaller than 42
# -> in all 3 cases print out both 0 and the number if they meet the condition

puts "Submit any positive integer smaller than 100"
limit = gets.chomp.to_i

puts 'all odd numbers between 0 and the submitted number'
x = 0
while x <= limit
 puts x if x % 2 != 0
 x += 1
end

puts 'all even numbers between 0 and the submitted number'
x = 0
until x > limit
 puts x if x % 2 == 0
 x += 1
end

puts 'all numbers between 0 and the submitted number smaller than 42'
x = 0
loop do
  puts x
  x += 1
  break if x == 42 || x > limit
end

