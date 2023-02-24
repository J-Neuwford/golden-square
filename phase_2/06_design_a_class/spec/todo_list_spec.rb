require 'todo_list'

describe TodoList do
  it 'returns a list with one task' do
    list = TodoList.new
    list.add("task one")
    result = list.print_list
    expect(result).to eq "task one"
  end

  it 'returns a list with two tasks' do
    list = TodoList.new
    list.add("task one")
    list.add(("task two"))
    result = list.print_list
    expect(result).to eq "task one, task two"
  end

  it 'completes an item and returns the remaining list' do
    list = TodoList.new
    list.add("task one")
    list.add("task two")
    list.complete("task one")
    result = list.print_list
    expect(result).to eq "task two"
  end

  it 'attempt to complete a task from an empty list' do
    list = TodoList.new
    expect{ list.complete("task one") }.to raise_error "list is empty!"  
  end

  it 'attempt to print an empty list' do
    list = TodoList.new
    expect{ list.print_list }.to raise_error "list is empty!"  
  end

  it 'attempt to complete a task not on the list' do
    list = TodoList.new
    list.add("task one")
    expect { list.complete("task two")}.to raise_error "task does not exist!"
  end
end