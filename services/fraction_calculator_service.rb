class FractionCalculatorService
  def self.call(calculation)
    new(calculation).call
  end

  def initialize(calculation)
    @calculation = calculation
  end

  attr_reader :calculation

  def call
    operands_and_operators = OperationsService.call(calculation)
    eval_string = operands_and_operators.reduce("") do |acc, op|
      acc << op.to_string_notation
    end
    rational_result = eval(eval_string)
  end
end