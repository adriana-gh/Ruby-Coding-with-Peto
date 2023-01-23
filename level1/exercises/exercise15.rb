def mymethod(number, &blockxyz)
  puts number
  a=yield number
  puts a if !a.nil?
end

mymethod(2) { |x| puts x*x }
mymethod(3) { |x| x*x*x }

#~ exercise:
# -> define a method that takes a number argument
# -> print and yield the number
# -> if the yield returns something else than `nil`, print it
# -> call your method with a number and
#    a block that will print out the number squared
# -> call your method with a number and
#    a block that will return the number cubed (raised to the third power)