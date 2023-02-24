require "string_builder"

RSpec.describe StringBuilder do
  it "returns the length of string 'Josh'" do
    string = StringBuilder.new
    string.add("Josh")
    result = string.size
    expect(result).to eq 4
  end

  it "returns the string 'Jenny'" do
    string = StringBuilder.new
    string.add("Jenny")
    result = string.output
    expect(result).to eq "Jenny"
  end
end