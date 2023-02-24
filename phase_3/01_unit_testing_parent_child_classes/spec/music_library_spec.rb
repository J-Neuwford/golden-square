require 'music_library'

describe MusicLibrary do
  it 'returns a list of track objects' do
    music_library = MusicLibrary.new
    track_1 = double :track
    track_2 = double :track
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  it 'returns a list of tracks that match the keyword' do
    music_library = MusicLibrary.new
    track_1 = double :track, title: "song_1", artist: "Tom"
    track_2 = double :track, title: "song_2", artist: "Dave"
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search("Tom")).to eq [track_1]
  end
end