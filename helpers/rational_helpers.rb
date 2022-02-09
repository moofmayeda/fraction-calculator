module RationalHelpers
  def to_string_notation
    "#{self}r"
  end
end

Rational.class_eval { include RationalHelpers }