require '../helpers/rational_helpers'

RSpec.describe RationalHelpers do
  describe "#to_string_notation" do
    it { expect(Rational("1/2").to_string_notation).to eq "1/2r" }
  end

  describe "#to_expanded_format" do
    it { expect(Rational("1/2").to_expanded_format). to eq "1/2" }
    it { expect(Rational("-1/2").to_expanded_format). to eq "-1/2" }
    it { expect(Rational("4/2").to_expanded_format). to eq "2" }
    it { expect(Rational("3/1").to_expanded_format). to eq "3" }
    it { expect(Rational("3/2").to_expanded_format). to eq "1_1/2" }
    it { expect(Rational("-3/2").to_expanded_format). to eq "-1_1/2" }
  end

  describe ".from_expanded_format" do
    it "accepts underscore separated whole and partial fractions and returns a rational number" do
      expect(Rational.from_expanded_format("5_1/2")).to eq 11/2r
    end

    it { expect(Rational.from_expanded_format("1_1")).to eq 2 }

    it { expect(Rational.from_expanded_format("0_5/3")).to eq 5/3r }

    it "handles negative fractions" do
      expect(Rational.from_expanded_format("-1_1/3")).to eq -4/3r
    end

    it "raises an error if the fraction is invalid" do
      expect { Rational.from_expanded_format("1_1/2_1/3")}.to raise_error ArgumentError
    end
  end
end