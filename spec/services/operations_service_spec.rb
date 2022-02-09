require '../services/operations_service'

RSpec.describe OperationsService do
  it "maps alternating items to operands and operators" do
    expect(described_class.call("1/3 + 1/2")).to contain_exactly(
      1/3r,
      an_object_having_attributes(method: Operator::ADD),
      1/2r
    )
  end

  it "raises an error if an operand is invalid" do
    expect { described_class.call("malicious + code") }.to raise_error ArgumentError
  end
end