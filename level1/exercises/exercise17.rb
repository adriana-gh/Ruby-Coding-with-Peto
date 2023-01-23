#~ exercise:
# -> create a proc that will take one string argument,
#    if the string has fewer than 7 characters,
#      it will the return the string capitalized
#    if the string has more than 7 characters,
#      it will return the first 7 characters capitalized,
#      followed by 3 dots
#    for example:
#      `proc.call('very long string')` returns 'Very lo...'
#      `proc.call('short')` returns 'Short'
# -> ask the user to provide a set of people names
#      and store them into an array
# -> ask the user to provide a set of city names
#      and store them into a different array
# -> sanitize/clean up both these arrays with your proc
#      and print out the results
# -> for example:
#      input:
#        ['jim', 'veronika']
#        ['praha', 'bardejov']
#      output:
#        ['Jim', 'Veronik...]
#        ['Kosice', 'Bardejo...']

shorten = proc do |x|
  newstring=""
  if x.size < 7
    newstring << x
  else
    newstring << x.slice(0,7)
    newstring << "..."
  end
  newstring.capitalize
end

puts shorten.call('This is my string')
puts shorten.call('Hello!')

puts "Provide names:"
names = gets.chomp.split(', ')
puts "Provide cities:"
cities = gets.chomp.split(', ')

puts names.map(&shorten).to_s
puts cities.map(&shorten).to_s