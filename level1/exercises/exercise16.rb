square = proc{|x| x*x}
a = [1,2,3,4]
puts a.map(&square).to_s


#~ exercise:
# -> create a proc that takes one number argument
#    and returns it squared
# -> create an array with any numbers
# -> print out the result of calling the method
#    `map` with your proc on the array
