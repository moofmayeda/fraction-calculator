class FractionCalculatorService
  Result = Struct.new(:rational, :error, keyword_init: true) do
    def success
      error.nil?
    end
  end

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
    Result.new(rational: rational_result)
  rescue ArgumentError, SyntaxError => e
    Result.new(error: e)
  end
end