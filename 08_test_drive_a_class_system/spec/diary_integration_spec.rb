require 'diary_entry'
require 'diary'

describe 'integration' do
  context 'adds 2 short dairy entries to the diary then' do
    it "returns a list of all entries" do 
      diary = Diary.new
      entry1 = DiaryEntry.new("entry 1", "hi")
      entry2 = DiaryEntry.new("entry 2", "hello")
      diary.add(entry1)
      diary.add(entry2)
      result = diary.all    
      expect(result).to eq [entry1, entry2]
    end

    it "returns the total word count of all entries" do
      diary = Diary.new
      entry1 = DiaryEntry.new("entry 1", "hi")
      entry2 = DiaryEntry.new("entry 2", "hello")
      diary.add(entry1)
      diary.add(entry2)
      expect(diary.count_words).to eq 2
    end

    it "returns the total reading time" do
      diary = Diary.new
      entry1 = DiaryEntry.new("entry 1", ("one two three four five"))
      entry2 = DiaryEntry.new("entry 2", ("one two three"))
      diary.add(entry1)
      diary.add(entry2)
      expect(diary.reading_time(1)).to eq 8
    end

    it 'returns the entry with the closest read time given' do
      diary = Diary.new
      entry1 = DiaryEntry.new("entry 1", "one two three four five")
      entry2 = DiaryEntry.new("entry 2", "one two")
      diary.add(entry1)
      diary.add(entry2)
      result =  diary.find_best_entry_for_reading_time(1, 3)
      expect(result).to eq entry2     
    end

    it 'returns the entry with the closest read time given' do
      diary = Diary.new
      entry1 = DiaryEntry.new("entry 1", "one two three four five")
      entry2 = DiaryEntry.new("entry 2", "one two")
      entry3 = DiaryEntry.new("entry 1", "one two three four five six seven eight nine")
      entry4 = DiaryEntry.new("entry 1", "one two three four five six")

      diary.add(entry1)
      diary.add(entry2)
      diary.add(entry3)
      diary.add(entry4)
      result =  diary.find_best_entry_for_reading_time(1, 6)
      expect(result).to eq entry4   
    end
  end
end