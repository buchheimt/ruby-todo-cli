#!/usr/local/bin/ruby -w

require_relative "../lib/classes"
require "pry"

if __FILE__ == $PROGRAM_NAME
  my_list = List.new
  puts "You have created a new list"

  my_task = Task.new("walk the dogs")

  my_list.add(my_task.description)
  puts my_list.all_tasks
end
