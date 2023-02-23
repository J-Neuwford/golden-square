# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# 'read_time' calculates and returns the estimated reading time of given text in minutes.
estimated_time = read_time(text)

text: a string (e.g. "Lorem ipsum...")
estimated_time: an integer value representing minutes.

estimated_time will be rounded up to provide a reasonable estimate.
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
read_time("") => "Read time: 0 mins"
read_time("not many words") => "Read time: <1 min"
read_time(lorum_ipsum) => "Read time: 2 mins"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

---