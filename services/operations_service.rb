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
        Rational.from_expanded_format(op)
      else
        Operator.new(op)
      end
    end
  end
end