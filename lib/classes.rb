class List
  attr_reader :all_tasks
  def initialize
    @all_tasks = []
    puts "You have created a new list"
  end

  def add(task)
    @all_tasks << task
    puts "\nYou have added a task to the Todo List:"
    puts task.description
  end

  def show
    puts "\nHere are your tasks:"
    all_tasks.each {|task| puts task.description}
  end

end

class Task
  attr_reader :description
  def initialize(description)
    @description = description
  end

end
