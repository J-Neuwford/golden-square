class TodoList
  def initialize
  @task_list = []
  end

  def add(task)
    @task_list << task
  end

  def return_incomplete_tasks
    incompleted = []
    @task_list.each do |task|
      incompleted << task.task if !task.is_done?
    end
    return incompleted
  end

  def return_completed_tasks
    completed = []
    @task_list.each do |task|
     completed << task.task if task.is_done?
    end
    return completed
  end
end