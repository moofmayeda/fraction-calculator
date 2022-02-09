class Operator
  ADD = "+"
  SUBTRACT = "-"
  MULTIPLY = "*"
  DIVIDE = "/"
  VALID_OPERATORS = {"+" => ADD, "-" => SUBTRACT, "*" => MULTIPLY, "/" => DIVIDE}

  def initialize(operator)
    @method = VALID_OPERATORS[operator]
    raise ArgumentError unless @method
  end

  attr_reader :method

  def to_string_notation
    method.to_s
  end
end