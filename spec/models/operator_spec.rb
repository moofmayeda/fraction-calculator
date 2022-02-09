require '../models/operator'

RSpec.describe Operator do
  it { expect(described_class.new("+")).to be_an Operator }

  it { expect(described_class.new("+").method).to eq Operator::ADD }

  it "raises an error if the operator is invalid" do
    expect { described_class.new("!") }.to raise_error ArgumentError
  end

  describe "#to_string_notation" do
    it "returns the valid operator as a string" do
      expect(described_class.new("+").to_string_notation).to eq "+"
    end
  end
end