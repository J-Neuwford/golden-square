def grammar_check(string)
  return "correct" if string == string.capitalize && string.chars.last.match?(/[.?!]/)
  return "missing capital" if string != string.capitalize && string.chars.last.match?(/[.?!]/)
  return "missing end punctuation" if string == string.capitalize && string.chars.last.match?(/[^.?!]/)
  return "missing capital and end punctuation"
end