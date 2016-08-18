
class Task

  #initializing a description for each task, default is 'no desc'
  def initialize
    @description = "NO DESCRIPTION"
    @status = false
    @title = "UNTITLED"
  end

def set_title(title)
  @title = title
end

def get_title
  @title
end
  #adding a string to each new task with a descrition of the task and setting it equal to instance variable
  def set_desc(new_description)
    @description = new_description
  end

  #retrieiving the string w/the description
  def get_desc
    @description
  end

  #changes status using a parameter to modify the instance variable and return true for done and fales when not done.
  def task_done(status)
    if status == "done"
      @status = true
    elsif
      status == "not done"
      @status = false
    end
  end

  #returns status of the status of task
  def task_done?
    @status
  end

  #pritns the title, description and status of task
  def print_task
    "Title: " + @title + " Description: " + @description + " Status: " + @status.to_s
  end


end
