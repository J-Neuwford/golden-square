def make_snippet(string)
  array = string.split(" ")
  if array.size == 5
    return string
  elsif array.size < 5
    return "nope"
  else
    return "#{array.slice(0, 5).join(" ")}..."
  end
end