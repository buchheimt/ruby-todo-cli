module Menu

  def menu
    puts "Welcome to the Spiffy To-Do List CLI!"
    puts "Here are your current options:"
    puts "1) Add\n2) Show\n3) Write to a File\nQ) Quit"
  end

  def show
    menu
  end

end

module Promptable

  def prompt(message="\nWhat would you like to do? 1) Add 2) Show 3) Write to a File Q) Quit", symbol=":> ")
    puts message
    print symbol
    gets.chomp
  end

end
