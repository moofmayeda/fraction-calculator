class FractionCalculatorService
  def self.call(calculation)
    new(calculation).call
  end

  def initialize(calculation)
    @calculation = calculation
  end

  attr_reader :calculation

  def call
    1
  end
end