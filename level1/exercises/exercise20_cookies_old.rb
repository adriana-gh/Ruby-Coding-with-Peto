wisdom_list = {
  :wisdom1 => "Whatever you do, always give 100%. Unless you’re donating blood.",
  :wisdom2 => "Seize the moment. Remember all those women on the Titanic who waved off the dessert cart.",
  :wisdom3 => "Bad decisions make good stories.",
  :wisdom4 => "If you’re going through hell, keep going.",
  :wisdom5 => "Never interrupt your enemy when he is making a mistake.",
  :wisdom6 => "Laugh a lot. It burns a lot of calories.",
}
combinations = {
  :all => [ :wisdom1, :wisdom2, :wisdom3 ],
  :chocolate => [ :wisdom4 ],
  :gingerbread => [ :wisdom5,:wisdom6 ]
}
wisdom_weights = {
  :wisdom1 => 1, :wisdom2 => 2, :wisdom3 => 10, :wisdom4 => 1,:wisdom5 => 5,:wisdom6 => 1
}
cookies = {:chocolate => 0, :vanilla => 0, :gingerbread => 0, :cinnamon => 0}
history = []
a = []

create_weighted_list = proc do |w|
  wisdom_weights[w].times {a<<wisdom_list[w]}
end

puts "Would you like some cookies? Please select a flavour if yes or type NO if you'd like to finish."
loop do
  cookies.keys.each{|k| print "#{k} "}
  puts
  answer = gets.chomp.downcase.to_sym
  if answer == :no
    puts "\r\nYou ate the following cookies: "
    cookies.map { |t, c| puts "#{c} #{t}" }
    break
  elsif cookies[answer] == nil
    puts "\r\nThis is not a valid answer. Please choose a flavour from the list or type NO if you'd like to finish."
  else
    a=[]
    cookies[answer]+=1
    combinations[answer].each(&create_weighted_list) if combinations.keys.include?(answer)
    combinations[:all].each(&create_weighted_list)
    a-=history
    puts random = a.sample
    history << random
    history = history.drop(1) if history.size == 3
    puts "\r\nWould you like more cookies? Please select a flavour if yes or type NO if you'd like to finish."
  end
end

