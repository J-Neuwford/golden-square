class SecretDiary
  def initialize(diary)
    @diary = diary
    @locked = true
  end

  def read
    return @diary.read if !@locked
    raise "Go away!"
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end