#~ exericse:
# -> create a lambda that will take a string argument
#    and return it as a symbol (hint: `to_sym`)
# -> create an array of random strings
# -> using `map!` and your lambda, convert all the strings
#    in the array into symbols


lmb = lambda {|a| a.to_sym}
strings = ["good morning", "where is my breakfast?"]
puts strings.map!(&lmb).to_s