#~ exercise3:
# -> write a method that will take a number
#    as argument, and return the number squared
# -> if the given argument is not a number
#    return an error message
# -> in a loop ask the user to provide a number,
#    call your method with the number, and print
#    out the returned value
# -> end the loop when user enters `end`

def square(number)
    return "Please write a number. This is not a number." if number != '0' && number.to_i == 0
    number.to_i**2
end

loop do
  puts 'Write a number:'
  n=gets.chomp
  break if n=="end"
  puts square(n)
end