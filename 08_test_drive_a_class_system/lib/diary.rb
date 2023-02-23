class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries << entry
  end

  def all
    return @entries
  end

  def count_words
    word_count = 0
    @entries.each { |entry| 
      entry_word_count = entry.count_words
      word_count += entry_word_count
    }
    return word_count
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
    total_reading_time = 0
    @entries.each { |entry| 
      entry_reading_time = entry.reading_time(wpm)
      total_reading_time += entry_reading_time
    }
    return total_reading_time
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
    closest_entry = nil
    sorted_entries = @entries.sort_by { |entry| entry.count_words }
    sorted_entries.each { |entry|
      if entry.count_words <= (wpm * minutes)
        closest_entry = entry
      end
    }
    return closest_entry
  end
end