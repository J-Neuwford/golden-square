# {{TODO_CHECKER}} Method Design Recipe

## 1. Describe the Problem
>As a user
>So that I can keep track of my tasks
>I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
#todo_checker method will be used to verify the users entry onto their todo list.
#to be valid, the string must contain the substring '#TODO'
todo_checker(string): take a string, and return a message to the user
message will be a string equivalent to a boolean

will handle the case in which an incorrect data type is entered.
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
#todo_checker("this is not valid") => "not a valid entry"
#todo_checker("#TODO: add entry to todo list") => "entry success!"
#todo_checker(123) => "not a valid entry"
#todo_checker(123.45) => "not a valid entry"

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

---