class DiaryEntry
  def initialize(content)
    @content = content
    @phone_numbers = []
  end

  def content
  return @content
  end

  def count_words
    return @content.split(" ").size
  end

  def extract_phone_numbers
    result = @content.split(" ")
    result.each { |word|
    word = word.delete('^0-9')
      @phone_numbers << word if word.length == 11 && word[0] == '0'
    }
    return @phone_numbers
  end
end