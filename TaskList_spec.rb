require 'rspec'
require_relative 'TaskList'
require_relative 'task'

describe TaskList do
  it 'is a thing' do
    expect{TaskList.new}.to_not raise_error
  end
end
