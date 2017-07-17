module Menu

  def menu
    puts "Welcome to the Spiffy To-Do List CLI!"
    puts "Here are your current options:"
    puts "1) Add\n2) Show\n3) Write to a File\n4) Read from a File\nQ) Quit"
  end

  def show
    menu
  end

end

module Promptable

  def prompt(message="\nWhat would you like to do? 1) Add 2) Show 3) Write to a File 4) Read from a file Q) Quit", symbol=":> ")
    puts message
    print symbol
    gets.chomp
  end

end
