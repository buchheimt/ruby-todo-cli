module Menu

  def welcome
    puts "\nWelcome to the Spiffy To-Do List CLI!"
  end

  def menu
    puts "\nHere are your options:"
    puts "1) Add\n2) Show\n3) Update\n4) Delete\n5) Write to a File\n6) Read from a File\nQ) Quit"
  end

  def show
    menu
  end

end

module Promptable

  def prompt(message="\nWhat would you like to do?", symbol=":> ")
    puts message
    print symbol
    gets.chomp
  end

end
