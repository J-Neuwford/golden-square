class Task
  def initialize(task)
    @task = task
    @is_done = false
  end

  def task
  return @task
  end

  def mark_done
  @is_done = true
  end

  def is_done?
    return @is_done
  end

end