# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

>As a user
>So that I can keep track of my tasks
>I want a program that I can add todo tasks to and see a list of them.

>As a user
>So that I can focus on tasks to complete
>I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TodoList
  def initialize
  #...
  end

  def add(task) # task is a string
    #add a task to the list of tasks, task will be a string
  end

  def print_list
    #returns the list of todo tasks
  end

  def complete(task)
   #completes the given task and deletes it from the task list.
   #throws an error if task isn't found
   #throws an error if list is empty
  end
end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

#1 list with one task
list = TodoList.new
list.add("task one")
list.print_list # => "task one"


# 2 list with two tasks separated by a space and comma
list = TodoList.new
list.add("task one")
list.add("task two")
list.print_list # => "task one, task two"

# 3 complete an item from the list
list = TodoList.new
list.add("task one")
list.add("task two")
list.complete("task one")
list.print_list # => "task two"

#4 attempt to complete a task from an empty list
ist = TodoList.new
list.complete("task one")
raise_error # => "The list is empty!"

#5 attempt to complete a task not on the list
ist = TodoList.new
list.add("task one")
list.complete("task two")
raise_error # => "This task does not exist!"

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._