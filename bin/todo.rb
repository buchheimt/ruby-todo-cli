#!/usr/local/bin/ruby -w

require_relative "../lib/classes"
require_relative "../lib/modules"
require "pry"

if __FILE__ == $PROGRAM_NAME
  include Menu

  #my_list = List.new
  #my_task1 = Task.new("walk the dogs")
  #my_task2 = Task.new("code things")

  #my_list.add(my_task1)
  #my_list.add(my_task2)
  #my_list.show

  Menu.show

end
