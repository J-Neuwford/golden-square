require "report_length"

RSpec.describe "report_length method" do
  it "reports a 4-character string" do
    result = report_length("Josh")
    expect(result).to eq "This string was 4 characters long."
  end
end