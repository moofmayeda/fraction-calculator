require '../helpers/rational_helpers'
require '../services/fraction_calculator_service'

RSpec.describe FractionCalculatorService do
  it { expect(described_class.call("1/2 + 2/3").rational).to eq 7/6r }
  it { expect(described_class.call("1_1/2 + 2/3").rational).to eq 13/6r }
  it { expect(described_class.call("1_1/2 + 2/3 - 1/6").rational).to eq 2 }
  it { expect(described_class.call("1 + 2 * 3").rational).to eq 7 }
  it { expect(described_class.call("1/2 - 5/6").rational).to eq -1/3r }
  it { expect(described_class.call("").rational).to be nil }

  it "returns a result object with a formatted result" do
    expect(described_class.call("0_1/2 + 1/2")).to have_attributes(
      rational: 1,
      expanded_format: "1"
    )
  end

  context "invalid calculation request" do
    it { expect(described_class.call("+ 2/3").success).to be false }
    it { expect(described_class.call("(1 + 2) * 3").success).to be false }
    it { expect(described_class.call("hi").success).to be false }
    it { expect(described_class.call("5/6 *").success).to be false }
  end
end