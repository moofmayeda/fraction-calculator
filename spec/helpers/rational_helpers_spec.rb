require '../helpers/rational_helpers'

RSpec.describe RationalHelpers do
  it { expect(Rational('1/2').to_string_notation).to eq "1/2r" }
end