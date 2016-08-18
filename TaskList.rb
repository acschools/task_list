require 'rspec'
require_relative 'task'

class TaskList < Task

  def initialize
    @list = []
  end

  def has_tasks?
    !@list.empty?
  end

  def add_task(task)
    @list << task
  end

  #calls on print task method to loop through each task in the list and returns the title, description and status.
  def get_list
    accumulator = ""
    @list.each { |task| accumulator = accumulator + task.print_task + "\n"}
    accumulator
  end

  def completed_tasks
    completed_tasks = []
    @list.find_all{|i| i.task_done? == true}


  end


end
