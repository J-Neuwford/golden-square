class MusicTracker 
  def initialize 
    @track_list = []
  end

  def add_track(track)
    track = track.to_s if track.is_a?(Integer)
    @track_list << track
  end

  def print_list
    return @track_list
  end
end 