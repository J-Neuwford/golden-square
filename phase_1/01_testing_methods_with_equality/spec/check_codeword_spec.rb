require "check_codeword"

RSpec.describe "check_codeword method" do
  it "codeword is correct" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
end