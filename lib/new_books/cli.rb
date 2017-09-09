class NewBooks::CLI


  def call
    welcome
    list_books
    menu
    goodby
  end

  def welcome
  puts  <<-DOC
                  .-~~~~~~~~~-._       _.-~~~~~~~~~-.
              __.'              ~.   .~              `.__
            .'//                  \./                  \\`.
          .'//                     |                     \\`.
        .'// .-~"""""""~~~~-._     |     _,-~~~~"""""""~-. \\`.
      .'//.-"                 `-.  |  .-'                 "-.\\`.
    .'//______.============-..   \ | /   ..-============.______\\`.
  .'______________________________\|/______________________________`.

     DOC
  end

  def list_books
    @new_books = NewBooks::Book.newest_books
    binding.pry
    @new_books.each_with_index do |book, i|
      puts "#{i}. #{book}"
    end
  end

  def menu
    input = nil
    while input != "exit"
        puts "Enter the number of the book you would like more info on,
         list to see the book list again or exit to leave:"
        input = gets.strip

        if input.to_i > 0
          new_book = @new_books[input.to_i-1]
          puts "#{title} - #{publisher}  #{description}"
        elsif input == "list"
          list_books
        else
        puts "Invalid input please put list or exit"
      end
    end
  end

def goodby
  puts "Thanks for checking for new books! Keep reading!!

  ~~It's all a matter of paying attention,
  being awake in the present moment,
  and not expecting a huge payoff.
  The magic in this world seems to work in
  whispers and small kindnesses.”
  ~Charles de Lint"
end









































#class end
end
