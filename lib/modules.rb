module Menu

  def welcome
    puts "\nWelcome to the Spiffy To-Do List CLI!"
  end

  def menu
    puts "\nHere are your options:"
    puts "1) Add\n2) Show\n3) Update\n4) Toggle Status\n5) Delete\n6) Write to a File\n7) Read from a File\nH) Help\nQ) Quit"
  end

  def show
    menu
  end

  def get_time_formatted
    "#{Time.now.month}-#{Time.now.day}-#{Time.now.year}"
  end

end

module Promptable

  def prompt(message="\nWhat would you like to do?", symbol=":> ")
    puts message
    print symbol
    gets.chomp
  end

end
