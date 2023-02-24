require 'grammar_check'

RSpec.describe "grammar_check method" do
  it "recieves a correct input" do
    result = grammar_check("This is a success!")
    expect(result).to eq "correct"
  end

  it "receives an incorrect input" do
    result = grammar_check("this is a failure")
    expect(result).to eq "missing capital and end punctuation"
  end

  it "has end punctuation, missing capital" do
   result = grammar_check("this is also a failure.")
   expect(result).to eq "missing capital"
  end

  it "has capital, missing end punctuation" do
    result = grammar_check("And so is this")
    expect(result).to eq "missing end punctuation"
  end
end