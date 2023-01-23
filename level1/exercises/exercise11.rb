#~ exercise:
# -> ask the user for some text
# -> create a hash from the given text
#      keys will be the words in the text
#      values will be how many times the word occurs in the text
# -> print out each key-value pair from this hash in the following format:
#      'word' occurs N times
# -> for example:
#      text = 'the night owls fly in the night sky'
#      hash = { 'the' => 2, 'night' => 2, 'owls' => 1, 'fly' => 1, 'in' => 1, 'sky' => 1 }
#      expected output:
#        'night' occurs 2 times
#        'the' occurs 2 times
#        'owls' occurs 1 times
#        ...
# -> bonus points for `1 time` instead of `1 times`


puts "Write a sentence"
s = gets.chomp
words = s.split(' ')

hash=Hash.new(0)
words.each do |w|
    hash[w] += 1
end

# hash.each do |x,y|
#   z= if y == 1
#     'time'
#   else
#     'times'
#   end
#   puts "The word #{x} is used #{y} #{z}."
# end

hash.each do |x,y|
    z= y == 1 ? 'time' :'times'
    puts "The word #{x} is used #{y} #{z}."
end
