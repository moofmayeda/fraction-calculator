require '../services/fraction_calculator_service'

RSpec.describe FractionCalculatorService do
  it { expect(described_class.call("1/2 + 1/2")).to eq 1 }
end