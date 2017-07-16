class List
  attr_reader :all_tasks
  def initialize
    @all_tasks = ["hi I'm your task list"]
  end

  def add(task)
    @all_tasks << task
  end

end

class Task
  attr_reader :description
  def initialize(description)
    @description = description
  end

end
