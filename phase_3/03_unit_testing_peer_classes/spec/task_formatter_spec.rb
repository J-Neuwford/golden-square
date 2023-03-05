require 'task_formatter'

describe TaskFormatter do
  it 'is created' do
    task = double :task
    task_formatter = TaskFormatter.new(task)
    expect(task_formatter).to be
  end

  it 'returns uncompleted task as a formatted as a string' do
    task = double :task, title: "task", complete?: false
    task_formatter = TaskFormatter.new(task)
    expect(task_formatter.format).to eq "[ ] task"
  end

  it 'returns completed task as a formatted as a string' do
    task = double :task, title: "task", complete?: true
    task_formatter = TaskFormatter.new(task)
    expect(task_formatter.format).to eq "[x] task"
  end
end