class List
  attr_reader :all_tasks
  def initialize
    @all_tasks = []
  end

  def add(task)
    @all_tasks << task
    puts "\nYou have added a task to the Todo List:"
    puts task.description
  end

  def show
    puts "\nHere are your tasks:"
    all_tasks.each_with_index {|task, index| puts "#{index + 1}) #{task.description}"}
  end

  def write_to_file(filename)
    IO.write(filename, @all_tasks.map(&:to_s).join("\n"))
    puts "Your list was written to #{filename}!"
  end

  def read_from_file(filename)
    IO.readlines(filename).each { |line| add(Task.new(line.chomp))}
  end

  def delete(task_number)
    @all_tasks.delete_at(task_number.to_i - 1)
  end

end

class Task
  attr_reader :description
  def initialize(description)
    @description = description
  end

  def to_s
    @description
  end

end
