require 'rspec'
require_relative 'TaskList'
require_relative 'task'

describe TaskList do
  it 'is a thing' do
    expect{TaskList.new}.to_not raise_error
  end

  #tests to see if new task list array is empty when created so that has_tasks? will return false
  it 'is empty when created' do
    list = TaskList.new
    expect(list.has_tasks?).to be false
  end

  #tests to make sure new tasks can be added/stored in array so that has_tasks? method will return true
  it 'can store tasks' do
    list = TaskList.new
    groceries = Task.new
    walk_dog = Task.new
    list.add_task groceries
    list.add_task walk_dog
    expect(list.has_tasks?).to be true
  end

  #tests to see if get_list method returns title, description and status.
  it 'can get a list of tasks w/titles, descriptions, and Status' do
    list = TaskList.new
    groceries = Task.new
    groceries.set_title("Food")
    walk_dog = Task.new
    walk_dog.set_desc("take dogs for a walk")
    list.add_task groceries
    list.add_task walk_dog
    #expects to return string that includes the list returned by the print_task method
    expect(list.get_list.to_s).to include "Title: Food Description: NO DESCRIPTION Status: false\nTitle: UNTITLED Description: take dogs for a walk Status: false\n"
  end

  it "should find all completed tasks in the array"  do
    list = TaskList.new
    groceries = Task.new
    groceries.task_done("done")
    list.add_task(groceries)

    # 
    # list.completed_tasks???????
    # expect(list.completed_tasks).to match [list] ?????????
    #
    # TO DO ^^^^^^^^

  end

  # it "should find all incompleted tasks in the array" do
  #   list = TaskList.new
  #   groceries = Task.new
  #   groceries.task_done("not done")
  #   list.add_task(groceries)
  #
  # end


end
