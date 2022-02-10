module RationalHelpers
  def self.included(klass)
    klass.extend(ClassMethods)
  end

  module ClassMethods
    def from_expanded_format(fraction)
      if fraction =~ /_/
        whole, part, *remainder = fraction.split("_")
        raise ArgumentError if remainder.size > 0
        total = Rational(whole)
        if !total.negative?
          total += Rational(part)
        else
          total -= Rational(part)
        end
        total
      else
        Rational(fraction)
      end
    end
  end

  def to_string_notation
    "#{self}r"
  end

  def part
    (self.abs - whole).abs
  end

  def whole
    (self.truncate).abs
  end

  def to_expanded_format
    result = ""
    result << part.to_s if !part.zero?
    result.prepend("_") if !whole.zero? && !part.zero?
    result.prepend(whole.to_s) if !whole.zero?
    result.prepend("-") if negative?
    result
  end
end

Rational.class_eval { include RationalHelpers }