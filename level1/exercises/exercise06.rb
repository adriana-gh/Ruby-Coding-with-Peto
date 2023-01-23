
puts "What's your age?"
age = gets.chomp.to_i

if age >= 21
	puts "OK, you can drink."
elsif age >= 18
	puts "NO, but you could drink if you are not in US."
else
  puts "You can't drink."
end


#~ exercise:
# -> ask the user to provide his age, and based on the answer tell him
#    if hes old enough to drink (assume drinking age 21)
# -> if the user is between 18-21 let him know that he could drink if he
#    wasnt in the US :D