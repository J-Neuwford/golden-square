class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @chunk = []
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split(" ").size
  end

  def reading_time(wpm) 
    return (@contents.split(" ").size / wpm).ceil
  end

  def reading_chunk(wpm, minutes) 
    @chunk = @contents.split(" ") if @chunk.size == 0
    chunk = @chunk.slice(0...wpm*minutes)
    @chunk.slice!(0...wpm*minutes)
    return chunk.join(" ")
  end
end
