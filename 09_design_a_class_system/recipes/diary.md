# {{Diary}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

>As a user
>So that I can record my experiences
>I want to keep a regular diary

>As a user
>So that I can reflect on my experiences
>I want to read my past diary entries

>As a user
>So that I can reflect on my experiences in my busy day
>I want to select diary entries to read based on how much time I have and my reading speed

>As a user
>So that I can keep track of my tasks
>I want to keep a todo list along with my diary

>As a user
>So that I can keep track of my contacts
>I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```
┌────────────────────────────┐       ┌──────────────────────────┐
│                            │       │                          │
│  Diary                     │       │ TodoList                 │
│                            │       │                          │
│  -add(Entry)               │       │ -add(Task)               │
│                            │       │                          │
│  -read_entries             │       │ -mark_all_done           │
│                            │       │                          │
│  -find_best_entry_for      ├───────┤ -return_incomplete_tasks │
│   reading_time(wpm,mins)   │       │                          │
│                            │       │ -return_completed_tasks  │
│  -return_phone_numbers     │       │                          │
│                            │       │                          │
│  -return_todo_list         │       │                          │
│                            │       │                          │
└────────────┬───────────────┘       └─────────────┬────────────┘
             │                                     │
             │                                     │
             │                                     │
             │                                     │
             │                                     │
             │                                     │
┌────────────┴───────────────┐       ┌─────────────┴────────────┐
│                            │       │                          │
│ DiaryEntry                 │       │ Task                     │
│                            │       │                          │
│ -return_entry              │       │ -return_task             │
│                            │       │                          │
│ -count_words               │       │ -mark_done               │
│                            │       │                          │
│ -extract_phone_numbers     │       │ -is_done?                │
│                            │       │                          │
│                            │       │                          │
│                            │       │                          │
│                            │       │                          │
│                            │       │                          │
│                            │       │                          │
└────────────────────────────┘       └──────────────────────────┘
```

```ruby
class Diary
  def initialize
  #...
  end

  def return_contents
  # returns the contents of all entries
  end

  def todo_list
    # returns todo list
  end

  def add(entry)
  # adds a DiaryEntry object to the diary
  end

  def find_best_entry_for_reading_time(wpm, minutes)
  # returns the entry with the closest word count to what the user can read
  # will be at most equal to possible word count readable by user (wpm * minutes)
  end

  def return_phone_numbers
  # returns a list of phone numbers as strings contained within the entry list
  end
end

class TodoList
  def initialize
  #...
  end

  def add(task)
  # add task object to the todo list
  end

  def mark_all_done
  # marks all tasks as complete
  end

  def return_incomplete_tasks
  # returns a list of incomplete tasks
  end

  def return_completed_tasks
  # returns a list of completed tasks
  end
end

class DiaryEntry
  def intitialize(contents)
  #...
  end

  def entry
  # returns diary entry as a string
  end

  def count_words
  # returns the word count of the entry as an integer
  end

  def extract_phone_numbers
  #searches for phone numbers and adds them to a list as strings
  end
end

class Task
  def initialize(task)

  end

  def task
  # returns the task as a string
  end

  def mark_done
  # marks the task as complete
  end

  def is_done?
  # returns true or false if task is completed
  end

end

```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# Integration tests

#1 
# returns a list of entries
diary = Diary.new 
entry_1 = DiaryEntry.new("entry one")
entry_2 = DiaryEntry.new("entry two")
diary.add(entry_1)
diary.add(entry_2)
diary.return_contents # => [entry_1, entry_2]

#2
# finds the best entry the user can read in a specified time
diary = Diary.new 
entry_1 = DiaryEntry.new("entry one")
entry_2 = DiaryEntry.new("entry two")
diary.add(entry_1)
diary.add(entry_2)
entry_3 = DiaryEntry.new("This is a longer entry")
diary.find_best_entry_for_reading_time(1, 5) # => entry_3

#3 
# returns a todo list with two tasks
diary = DiaryEntry.new
diary.todo_list.add("task one")
diary.todo_list.add("task two")
diary.todo_list.add(entry_1)
diary.todo_list.add(entry_2)
diary.todo_list.return_incomplete_tasks # => ["task one", "task two"]

#4
# returns a todo list with two completed tasks
diary = DiaryEntry.new
task1 = diary.todo_list.add("task one")
task2 = diary.todo_list.add("task two")
diary.todo_list.add(entry_1)
diary.todo_list.add(entry_2)
task1.mark_done
task2.mark_done
diary.todo_list.return_completed_tasks # => ["task one", "task two"]

#5
# returns a sorted list of all phone numbers within the diary entries
diary = Diary.new
entry_1 = DiaryEntry.new("entry one 07888888888")
entry_2 = DiaryEntry.new("07777777777 entry 07999999999 two")
diary.return_phone_numbers # => ["07777777777", "07888888888", "07999999999"]

```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE

# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._


