#~ exercise:
# -> create a lambda that will take a string argument
#      and check if the first letter of the string is
#      less than (earlier in the alphabet) than
#      the letter 's'
# -> create an array with random strings
# -> use your lambda to filter your array, to contain
#      only strings that start with letter than comes
#      before 's' (hint: `array.select`)


lmb = lambda {|a| a<"s"}
words = ["one", "tomato", "hello"]
puts words.select!(&lmb)