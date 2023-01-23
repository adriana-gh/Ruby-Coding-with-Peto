#~ exercise:
# -> create an empty array
# -> repeatedly ask the user to provide random words or numbers and add them to the array
# -> stop the loop when the user provides the word `end`
#    and dont add `end` to the array
# -> print out the resulting array

a=[]
puts 'Add some random words'
w=gets.chomp

while w != 'end'
  a<<w
  w=gets.chomp
end

puts a.join(' ')
