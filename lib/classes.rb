class List
  attr_reader :all_tasks
  def initialize()
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
    IO.write(filename, @all_tasks.map(&:to_machine).join("\n"))
    puts "Your list was written to #{filename}!"
  end

  def read_from_file(filename)
    IO.readlines(filename).each do |line|
      status, description = line.split (" : ")
      status = status.include?("X")
      add(Task.new(description, status))
    end
  end

  def delete(task_number)
    @all_tasks.delete_at(task_number.to_i - 1)
  end

  def update(task_number, task)
    @all_tasks[task_number.to_i - 1] = task
  end

end

class Task
  attr_reader :description
  attr_accessor :status
  def initialize(description, status=false)
    @description = description
    @status = status
  end

  def to_s
    @description
  end

  def completed?
    @status
  end

  private
  def represent_status
    @status ? '[X]' : '[ ]'
  end

  public
  def to_machine
    "#{represent_status} : #{@description}"
  end

end
