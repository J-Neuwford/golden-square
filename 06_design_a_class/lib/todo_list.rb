class TodoList
  def initialize
    @list = []
  end

  def add(text)
    @list << text
  end

  def print_list
    raise "list is empty!" if @list.size == 0
    return @list.join(", ")
  end

  def complete(task)
    raise "list is empty!" if @list.size == 0
    raise "task does not exist!" if @list.include?(task) == false
    @list.delete(task)
  end
end