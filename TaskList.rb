require 'rspec'
require_relative 'task'

class TaskList < Task

  def initialize
    @list = []
  end
end
