require './helpers/rational_helpers'
require './services/fraction_calculator_service'
require './services/operations_service'
require './models/operator'

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