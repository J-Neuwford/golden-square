```ruby
class TodoList
  def initialize
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    # Returns all non-done todos
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end

```

```ruby
class Todo
  def initialize(task) # task is a string
    # ...
  end

  def task
    # Returns the task as a string
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end

```

# example tests
```ruby
#1 
# task entry is not a string
todo = Todo.new (99)
todo.task # => raise error "not a string"

# 2
# task entry is a string
todo = Todo.new("pair with Francesco")
result = todo.task
expect(result).to eq "pair with Francesco"

#3 
# mark_done method throws an error if task added is an empty string
todo = Todo.new("")
result = todo.mark_done!
expect{result}.to raise_error # => "todo is an empty string"

#4 
# mark_done method throws an error if task added is only spaces
todo = Todo.new("   ")
result = todo.mark_done!
expect{result}.to  raise_error # => "todo does not contain characters"

#5 
# done? method return false if not marked as done
todo = Todo.new("pair with Francesco")
result = todo.done?
expect(result).to eq # => false

#6
# done? method returns true if masked as done
todo = Todo.new("pair with Francesco")
todo.mark_done!
result = todo.done?
expect(result).to eq # => true


# Tests for todo_integration_spec.rb

#Example 0: it throws an error if the add method's argument is not an instance of Todo
todo_list = TodoList.new
todo_list.add(9)
# => raise "argument needs to be a Todo instance"

# Example 1: returns the incomplete todos
todo_list = TodoList.new
todo1 = Todo.new("pairing with Josh")
todo2 = Todo.new("pair with Francesco")
todo_list.add(todo1)
todo_list.add(todo2)
todo_list.incomplete
# => returns [todo1,todo2]

# Example 2: returns the complete todos
todo_list = TodoList.new
todo1 = Todo.new("pairing with Josh")
todo2 = Todo.new("pair with Francesco")
todo1.mark_done!
todo2.mark_done!
todo_list.add(todo1)
todo_list.add(todo2)
todo_list.complete
# => returns [todo1, todo2]

#Example 3:
todo_list = TodoList.new
todo1 = Todo.new("pairing with Josh")
todo2 = Todo.new("pair with Francesco")
todo2.mark_done!
todo_list.add(todo1)
todo_list.add(todo2)
todo_list.complete
# => [todo2]

#Example 4: it marks all the todos as complete
todo_list = TodoList.new
todo1 = Todo.new("pairing with Josh")
todo2 = Todo.new("pair with Francesco")
todo3 = Todo.new("tea bags and guitars")
todo2.mark_done!
todo_list.add(todo1)
todo_list.add(todo2)
todo_list.add(todo3)
todo_list.give_up!
todo_list.incomplete
# => []


```