#!/usr/local/bin/ruby -w

require_relative "../lib/classes"
require_relative "../lib/modules"
require "pry"

if __FILE__ == $PROGRAM_NAME
  include Menu
  include Promptable

  my_list = List.new
  show
  input = prompt
  until input.upcase == "Q"
    case input
      when "1"
        task_input = prompt("\nWhat task would you like to add?")
        my_list.add(Task.new(task_input))
        input = prompt("\nAdd more tasks? (Y/n)")
        input.upcase == "Y" || input.upcase == "YES" ? input = "1" : input = prompt
      when "2"
        my_list.show
        input = prompt
      when "3"
        filename_input = prompt("\nPlease provide a filename to write to: ")
        my_list.write_to_file(filename_input)
        input = prompt
      when "4"
        filename_input = prompt("\nPlease provide a filename to read from: ")
        my_list.read_from_file(filename_input)
        input = prompt
      else
        puts "Sorry, I don't recognize that input..."
        input = prompt
    end
  end
  puts "\nThanks for using the Spiffy To-Do List CLI!"
end
