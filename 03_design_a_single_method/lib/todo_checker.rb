def todo_checker(string)
  string = string.to_s if string.is_a?(Float) || string.is_a?(Integer)
  return "entry success!" if string.include? "#TODO"
  return "not a valid entry"
end