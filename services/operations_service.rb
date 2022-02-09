class OperationsService
  def self.call(operations)
    new(operations).call
  end

  def initialize(operations)
    @operations = operations
  end

  attr_reader :operations

  def call
    operations.split(" ").map.with_index do |op, i|
      if i.even?
        Rational(op)
      else
        Operator.new(op).method
      end
    end
  end
end