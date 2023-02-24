require "Present"

RSpec.describe Present do
  context "wrap when already wrapped" do
    it "fails" do
      present = Present.new
      present.wrap("box")
      expect { present.wrap("box") }.to raise_error "A contents has already been wrapped."
    end
  end
  context "unwrap but no contents" do
    it "fails" do
      present = Present.new
      expect { present.unwrap}.to raise_error "No contents have been wrapped."
    end
  end
end