# {{MusicTracker}} Class Design Recipe
# single class design

## 1. Describe the Problem
>As a user
>So that I can keep track of my music listening
>I want to add tracks I've listened to and see a list of them.



## 2. Design the Class Interface

```ruby
class MusicTracker
  def initialize
  #...
  end

  def add_track(track)
    # add the track to an array
  end

  def print_list
    #return a list of strings, which will contain the track names.
  end
end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby

#1  user prints list with no tracks
  list = MusicTracker.new
  list.print_list # => []

#2 add a track to the list and print list. 
  list = MusicTracker.new
  list.add_track("track_1")
  list.print_list # => ["track_1"]

#3 add multiple tracks and print list
  list = MusicTracker.new
  list.add_track("track_1")
  list.add_track("track_2")
  list.print_list # => ["track_1, "track_2"]

#4 user enters a number instead of a string
  ist = MusicTracker.new
  list.add_track(22)
  list.print_list # => ["22"]



```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._