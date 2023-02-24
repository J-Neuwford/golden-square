require './lib/greet'

RSpec.describe "greet_method" do
  it "greets a given name" do 
    result = greet("Josh")
    expect(result).to eq "Hello, Josh!"
  end
end