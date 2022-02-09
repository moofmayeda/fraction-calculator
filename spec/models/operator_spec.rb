require '../models/operator'

RSpec.describe Operator do
  it { expect(described_class.new("+")).to be_an Operator }

  it { expect(described_class.new("+").method).to eq "+" }

  it "raises an error if the operator is invalid" do
    expect { described_class.new("!") }.to raise_error ArgumentError
  end
end