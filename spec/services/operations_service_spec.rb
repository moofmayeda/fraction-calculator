require '../services/operations_service'

RSpec.describe OperationsService do
  it { expect(described_class.call("1/3 + 1/2")).to eq [1/3r, Operator::ADD, 1/2r] }

  it "raises an error if an operand is invalid" do
    expect { described_class.call("malicious + code") }.to raise_error ArgumentError
  end
end