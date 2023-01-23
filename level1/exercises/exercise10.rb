#~ exercise:
# -> ask the user for a secret word
# -> ask the user for some text (random words separated by spaces)
#    that includes the secret word at least once
# -> print out the provided text with all occurrences of the secret word
#    replaced by three stars '***'
# -> for example:
#      secret = 'strong_password'
#      text = 'my password is strong_password'
#      expected output: 'my password is ***'

# hint: 'some text'.split(' ') => ['some', 'text']

puts "Add your secret word"
secret = gets.chomp
puts "Write a sentence"
s = gets.chomp

s.split(' ').each do |x|
  if x==secret
    print '*** '
  else
    print "#{x} "
  end
end
puts


# solution with array:
# aa=[]
# s.split(' ').each do |x|
#   if x==secret
#     aa<<'***'
#   else
#     aa<<x
#   end
# end
# puts aa.join(' ')


# solution without iterators
#
# words = s.split(' ')
# i=0
# loop do
#   if words[i]==secret
#     words[i]='***'
#     break
#   end
#   i+=1
# end
# puts words.join(' ')