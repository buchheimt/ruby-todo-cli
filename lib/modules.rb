module Menu

  def menu
    puts "Welcome to the Spiffy To-Do List CLI!"
    puts "Here are your current options:"
    puts "1) Add\n2) Show\n3) Delete\n4) Write to a File\n5) Read from a File\nQ) Quit"
  end

  def show
    menu
  end

end

module Promptable

  def prompt(message="\nWhat would you like to do? 1) Add 2) Show 3) Delete 4) Write to a File 5) Read from a file Q) Quit", symbol=":> ")
    puts message
    print symbol
    gets.chomp
  end

end
