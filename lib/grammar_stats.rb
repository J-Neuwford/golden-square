class GrammarStats
  def initialize
    @passes = 0
    @fails = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    if text == text.capitalize && text.chars.last.match?(/[.?!]/)
      @passes += 1
      return true
    else
      @fails += 1
      return false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    raise "no check results" if @passes + @fails == 0
    return @passes.to_f / (@fails + @passes) * 100
  end
end