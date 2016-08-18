# Story: As a developer, I can create a Task.
require 'rspec'
require_relative 'task'
require_relative 'TaskList'
#checking to make sure a new task can be created in class 'task'
describe Task do
  it "can create a task" do
    expect{Task.new}.to_not raise_error
  end

  #testing to make sure we can give a task a description and retrieve it
  it 'can have a description' do
    laundry = Task.new
    laundry.set_desc "do 3 loads of laundry"
    expect(laundry.get_desc).to eq "do 3 loads of laundry"
  end

  #test to make sure we can set a task as done, default will be not done(false)
  it 'should have a status that is defaulted to not done' do
    laundry = Task.new
    expect(laundry.task_done?).to be false
  end

  it 'should be able to be marked as done' do
    laundry = Task.new
    laundry.task_done("done")
    expect(laundry.task_done?).to be true
  end

  it 'can have a title' do
    laundry = Task.new
    laundry.set_title "Laundry Day"
    expect(laundry.get_title).to eq 'Laundry Day'
  end


end #end task do
