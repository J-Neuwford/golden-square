require "count_words"

RSpec.describe "count_words method" do
  it "returns the number of words in an empty string" do
    result = count_words("")
    expect(result).to eq 0
  end

  it "returns the number of words in a string with 3 words" do
    result = count_words("hello there traveller")
    expect(result).to eq 3
  end
end