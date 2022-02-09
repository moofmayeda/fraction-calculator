require '../helpers/rational_helpers'
require '../services/fraction_calculator_service'

RSpec.describe FractionCalculatorService do
  it { expect(described_class.call("1/2 + 2/3").rational).to eq 7/6r }
  it { expect(described_class.call("1_1/2 + 2/3").rational).to eq 13/6r }
  it { expect(described_class.call("1_1/2 + 2/3 - 1/6").rational).to eq 2 }
  it { expect(described_class.call("1 + 2 * 3").rational).to eq 7 }

  context "invalid calculation request" do
    it { expect(described_class.call("+ 2/3").success).to be false }
    it { expect(described_class.call("(1 + 2) * 3").success).to be false }
    it { expect(described_class.call("hi").success).to be false }
    it { expect(described_class.call("5/6 *").success).to be false }
  end
end