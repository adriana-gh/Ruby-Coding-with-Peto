#~ exercise2:
# -> define a method that will take as arguments
#    a greeting and any number of names
# -> inside the method print out the greeting
#    for each of the given names
# -> call the method a couple times with different
#    number of names
# -> for example:
#      your_method('hello', 'a', 'b', 'c')
#      expected output:
#        'hello a'
#        'hello b'
#        'hello c'
#
#      your_method('hi', 'name')
#      expected output:
#        'hi name'

def greetings(a,*b)
  b.each do |x|
    puts "#{a} #{x}!"
  end
end

greetings("Hello","Tom","Peter","Kathy")