#!/usr/local/bin/ruby -w

require_relative "../lib/classes"
require_relative "../lib/modules"
require "pry"

if __FILE__ == $PROGRAM_NAME
  include Menu
  include Promptable

  my_list = List.new
  Menu.show
  input = Promptable.prompt
  until input.upcase == "Q"
    case input
      when "1"
        task_input = Promptable.prompt("\nWhat task would you like to add?")
        my_list.add(Task.new(task_input))
        input = Promptable.prompt
      when "2"
        my_list.show
        input = Promptable.prompt
      else
        input = Promptable.prompt
    end
  end
  puts "\nThanks for using the Spiffy To-Do List CLI!"
end
