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
        total += Rational(part)
      else
        Rational(fraction)
      end
    end
  end

  def to_string_notation
    "#{self}r"
  end
end

Rational.class_eval { include RationalHelpers }