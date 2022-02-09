input = nil
while input != "quit"
  if input
    puts "Your result is: #{input}"
  end
  puts "Enter a calculation or type 'quit' to exit. What would you like to calculate?"
  input = gets.chomp
end
puts "Goodbye!"