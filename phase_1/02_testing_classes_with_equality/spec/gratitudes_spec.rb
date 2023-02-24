require "Gratitudes"

RSpec.describe Gratitudes do
  it "returns gratitude for ruby and rspec" do
    gratitudes = Gratitudes.new
    gratitudes.add("ruby")
    gratitudes.add("rspec")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: ruby, rspec"
  end
  context "when no task is set" do
    it "fails" do
      reminder = Reminder.new("Josh")
      expect { reminder.remind }.to raise_error "No reminder set!"
    end
  end
end