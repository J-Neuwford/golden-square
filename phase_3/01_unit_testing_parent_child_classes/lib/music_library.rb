class MusicLibrary
  def initialize
    @music_library = []
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
    @music_library << track
  end

  def all
    # Returns a list of track objects
    return @music_library
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
    tracks = []
    @music_library.each {|track| 
      if track.title.include?(keyword) || track.artist.include?(keyword) 
        tracks << track 
      end
    }
    return tracks

  end
end