print "Enter your text here: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  print "Nothing to do"
end
puts "My string goes like this #{user_input}"