require 'rspec'

class Task

  #initializing a description for each task, default is 'no desc'
  def initialize
    @description = "NO DESCRIPTION"
    @status = false
  end

  #adding a string to each new task with a descrition of the task and setting it equal to instance variable
  def set_desc(new_description)
    @description = new_description
  end

  #retrieiving the string w/the description
  def get_desc
    @description
  end

  def task_done(status)
    if status == "done"
      @status = true
    elsif
      status == "not done"
      @status = false
    end
  end

  def task_done?
    @status
  end


end
