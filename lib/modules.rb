module Menu

  def menu
    puts "Welcome to the Spiffy To-Do List CLI!"
    puts "Here are your current options:"
    puts "1) Add\n2) Show\nQ) Quit"
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
