class Diary
  def initialize
  @entries = []
  @task_list = TodoList.new
  end


  def add(entry)
    @entries << entry
  end

  def all
    contents = []
    @entries.each {|entry| contents << entry.content}
    return contents
  end

  def todo_list
    return @task_list
  end


  def find_best_entry_for_reading_time(wpm, minutes)
    closest_entry = nil
    sorted_entries = @entries.sort_by { |entry| entry.count_words }
    sorted_entries.each { |entry|
      if entry.count_words <= (wpm * minutes)
        closest_entry = entry
      end
    }
    return closest_entry
  end

  def return_phone_numbers
    phone_numbers = []
    @entries.each { |entry|
    phone_numbers << entry.extract_phone_numbers
    }
    return phone_numbers.join(" ").split(" ").sort
  end
end