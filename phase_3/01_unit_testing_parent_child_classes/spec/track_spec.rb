require 'track'

describe Track do
  it 'returns true if the keyword matches either the title or the artist' do
    track = Track.new("song", "Steve")
    expect(track.matches?("song")).to eq true
  end

  it 'returns false if the keyword matches neither the title nor the artist' do
    track = Track.new("song", "Steve")
    expect(track.matches?("Bob")).to eq false
  end

  it 'raises an error is matches? is called on an empty string' do
    track = Track.new("song", "Steve")
    expect{ track.matches?('') }.to raise_error "keyword string is empty"
  end

  it 'raises an error is matches? is called on an empty string' do
    track = Track.new("song", "Steve")
    expect{ track.matches?(' ') }.to raise_error "keyword string is empty"
  end

end