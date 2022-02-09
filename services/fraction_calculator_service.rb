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
    1
  end
end