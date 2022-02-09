require '../helpers/rational_helpers'
require '../services/fraction_calculator_service'

RSpec.describe FractionCalculatorService do
  it { expect(described_class.call("1/2 + 2/3")).to eq 7/6r }
end