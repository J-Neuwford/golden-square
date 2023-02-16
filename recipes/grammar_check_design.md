# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem
>As a user
>So that I can improve my grammar
>I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
#grammar check receives a string and return a bool based on capital start and punctuation end.
checked_string = grammar_check(string)

grammar_check(string): returns true or false
checked_string: boolean value
give the user a string instead of just boolean value
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
grammar_check("This is a success!") => "correct"
grammar_check("this is a failure") => "incorrect"
grammar_check("this is also a failure.") => "incorrect"
grammar_check("And so is this") => "incorrect"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

---