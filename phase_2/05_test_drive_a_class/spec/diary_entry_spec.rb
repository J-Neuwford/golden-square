require 'diary_entry.rb'

describe DiaryEntry do
  it 'returns the title of the diary entry' do
    entry = DiaryEntry.new("19/02", "hi")
    result = entry.title
    expect(result).to eq "19/02"
  end

  it 'returns the contents of the diary entry' do
    entry = DiaryEntry.new("20/02", "hi " * 400)
    result = entry.contents
    expect(result).to eq "hi " * 400
  end

  it 'returns the total reading time of the contents' do
    entry = DiaryEntry.new("21/02", ("hi " * 800))
    result = entry.reading_time(200)
    expect(result).to eq 4
  end

  it 'returns the contents that can be read in a specified time' do
    entry = DiaryEntry.new("22/02", "one two three")
    result = entry.reading_chunk(5, 1)
    expect(result).to eq "one two three"
  end

  it 'returns chunk if not enough time to read all text' do
    entry = DiaryEntry.new("23/02", "one two three")
    result = entry.reading_chunk(2, 1)
    expect(result).to eq ("one two")
  end

  it 'returns up to the end of the entry if the chunk is longer than remaining text' do
    entry = DiaryEntry.new("24/02", "one two three")
    entry.reading_chunk(2, 1)
    result = entry.reading_chunk(2, 1)
    expect(result).to eq "three"
  end

  it 'chunk starts from beginning of contents if the end of contents wa reached in the last chunk' do
    entry = DiaryEntry.new("25/02", "one two three four five")
    entry.reading_chunk(2, 1)
    entry.reading_chunk(4, 1)
    result = entry.reading_chunk(3, 1)
    expect(result).to eq "one two three"
  end
end

