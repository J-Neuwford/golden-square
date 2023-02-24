require "diary"
require "diary_entry"
require "todo_list"
require "task"

describe "integration" do
  before do
    @diary = Diary.new 
    @entry_1 = DiaryEntry.new("entry one")
    @entry_2 = DiaryEntry.new("entry two")
    @task_1 = Task.new("task one")
    @task_2 = Task.new("task two")
    @diary.todo_list.add(@task_1)
    @diary.todo_list.add(@task_2)
    @diary.add(@entry_1)
    @diary.add(@entry_2)

  end
  it "returns a list of entries" do 
    result = @diary.all
    expect(result).to eq ["entry one", "entry two"]
  end

  it "finds the best entry the user can read in a specified time" do
    entry_3 = DiaryEntry.new("This is a longer entry")
    @diary.add(entry_3)
    result = @diary.find_best_entry_for_reading_time(1, 5) 
    expect(result).to eq entry_3
  end

  it 'returns a todo list with two tasks' do
   result = @diary.todo_list.return_incomplete_tasks
   expect(result).to eq ["task one", "task two"]
  end

  it 'returns a todo list with two completed tasks' do
    @task_1.mark_done
    @task_2.mark_done
    result = @diary.todo_list.return_completed_tasks
    expect(result).to eq ["task one", "task two"]
  end

  it 'returns a sorted list of all phone numbers within the diary entries' do
    @diary = Diary.new
    entry_3 = DiaryEntry.new("95555555555 entry three 07888888888")
    entry_4 = DiaryEntry.new("07777777777 entry 07999999999 four")
    @diary.add(entry_3)
    @diary.add(entry_4)
    result = @diary.return_phone_numbers 
    expect(result).to eq ["07777777777", "07888888888", "07999999999"]
  end
end