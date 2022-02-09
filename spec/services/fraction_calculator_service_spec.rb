require '../services/fraction_calculator_service'

RSpec.describe FractionCalculatorService do
  it { expect(described_class.call("hi")).to eq 1 }
end