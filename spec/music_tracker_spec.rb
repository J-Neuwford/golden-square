require "music_tracker"

RSpec.describe MusicTracker do 
  context "when there are no tracks" do
    it "returns an empty list" do
      list = MusicTracker.new
      expect(list.print_list).to eq []
    end
  end

  context "after adding one track" do
    it "returns a list with the track" do
      list = MusicTracker.new
      list.add_track("track_1")
      expect(list.print_list).to eq ["track_1"]
    end
  end

  context "after adding multiple tracks" do
    it "returns the track list" do
      list = MusicTracker.new
      list.add_track("track_1")
      list.add_track("track_2")
      expect(list.print_list).to eq ["track_1", "track_2"]
    end
  end

  context "user enters a number instead of a string" do
    it "changes the number to an string" do
      list = MusicTracker.new
      list.add_track(22)
      expect(list.print_list).to eq ["22"]
    end
  end
end