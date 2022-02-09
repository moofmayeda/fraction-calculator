require './services/fraction_calculator_service'

input = nil
while input != "quit"
  if input
    result = FractionCalculatorService.call(input)
    puts "Your result is: #{result}"
  end
  puts "Enter a calculation or type 'quit' to exit. What would you like to calculate?"
  input = gets.chomp
end
puts "Goodbye!"