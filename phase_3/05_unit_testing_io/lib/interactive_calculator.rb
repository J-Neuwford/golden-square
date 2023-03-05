class InteractiveCalculator
  def initialize(io)
    @io = io
  end
  def run
    @io.puts "Hello, I will subtract two numbers."
    @io.puts "Please enter a number"
    first_number = @io.gets.to_s.chomp
    @io.puts "Please enter another number"
    second_number = @io.gets.to_s.chomp
    @io.puts "Here is your result:"
    result = first_number.to_i - second_number.to_i
    @io.puts "#{first_number} - #{second_number} = #{result}"
  end
end