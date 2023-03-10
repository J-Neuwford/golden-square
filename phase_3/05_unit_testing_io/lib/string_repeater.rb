# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX

class StringRepeater
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will repeat a string many times."
    @io.puts "Please enter a string"
    @string = @io.gets.chomp
    @io.puts "Please enter a number of repeats"
    @repeats = @io.gets.chomp
    @io.puts "Here is your result:"
    @io.puts "#{repeater(@string, @repeats)}"
  end

  private

  def repeater(string, repeats)
    result = []
    repeats.to_i.times do 
    result << string
    end

    return result.join

  end

end