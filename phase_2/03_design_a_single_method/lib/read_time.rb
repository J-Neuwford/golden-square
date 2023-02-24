def read_time(text)
  estimated_time = (text.split(" ").size)/200.to_f

  return "Read time: #{estimated_time.ceil} mins" if estimated_time > 1
  return "Read time: <1 min" if estimated_time > 0
  return "Read time: 0 mins"
end