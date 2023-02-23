require 'todo_checker'

describe 'todo_checker method' do
  it 'entry does not contain #TODO' do
    result = todo_checker("this is not valid")
    expect(result).to eq "not a valid entry"
  end

  it "entry containd '#TODO'" do
    result = todo_checker("#TODO: add entry to todo list")
    expect(result).to eq "entry success!"
  end

  it "entry is a number" do
    result = todo_checker(123)
    expect(result).to eq "not a valid entry"
  end

  it 'entry is a float' do 
    result = todo_checker(123.45)
    expect(result).to eq "not a valid entry"
  end
end