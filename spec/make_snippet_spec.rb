require "make_snippet"

RSpec.describe "make_snippet method" do
  it "return the make snippet input" do
    result = make_snippet("oh my word it's 5")
    expect(result).to eq "oh my word it's 5"
  end

  it "returns first 5 words of string + '...'" do
    result = make_snippet("holy cow it's even more than 5 words")
    expect(result).to eq "holy cow it's even more..."
  end

  it "tells user if string is less than 5 words" do
    result = make_snippet("oh my cow")
    expect(result).to eq "nope"
  end
end