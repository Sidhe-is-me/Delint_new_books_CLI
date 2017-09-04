class NewBooks::CLI


  def call
    puts "The Newest books are:"
    list_books
    menu
    goodby
  end

  def list_books
    #insert fake data for now.
    puts <<-DOC
    1. The Wind in His Heart - Triskell Press - 2017
    2 Our Lady of the Harbour - Triskell Press - 2016
    DOC
  end

  def menu
    input = nil
    while input != "exit"
        puts "Enter the number of the book you would like more info on, list to see the book list again or exit to leave:"
        input = gets.strip
      case input
      when "1"
        puts "More info on book one"
      when "2"
        puts "More info on book 2"
      when "list"
        list_books
      else
        puts "Invalid input please put list or exit"
      end
    end
  end

def goodby
  puts "Thanks for checking for new books! Keep reading!!

That's the thing with magic. You've got to know it's still here, all around us,
or it just stays invisible for you.
Don't forget - no one else sees the world the way you do,
so no one else can tell the stories that you have to tell.
I want to touch the heart of the world and make it smile. ~Charles DeLint"
end









































#class end
end
