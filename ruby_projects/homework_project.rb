dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732"
}

# method to display city names
# method to get area code, dial_book and city name

loop do
  puts "Do you want to lookup a city name?"
  
  answer = gets.chomp
  if answer != "Y"
    break
  end
end