require 'diary'

describe Diary do
  it 'is created' do
    diary = Diary.new("Entry")
    expect(diary).to be
  end
  it 'read diary entry' do
    diary = Diary.new("Entry")
    expect(diary.read).to eq "Entry"
  end
end