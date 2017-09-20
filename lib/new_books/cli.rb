class NewBooks::CLI
  def call
    welcome
    make_books
    list_titles
    menu
    goodby
  end

  def welcome
   puts "Welcome to Charle's DeLint's newest books list!"

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

  def make_books
    books_array = Scraper.scrape_site("https://www.sfsite.com/charlesdelint/")
    NewBooks::Book.create_from_collection(books_array)
    binding.pry

  end

  def list_titles
    NewBooks::Book.all.each_with_index do |book, i|
    puts " #{i+1}. #{book.title}"
    end
  end

  def menu
    input = nil
    while input != "exit"
        puts "Enter the number of the book you would like more info on,
              list to see the book list again
              or exit to leave:"
        input = gets.strip
        if input.to_i <= 13 && input.to_i > 0
          book = NewBooks::Book.all[input.to_i-1]
          puts "Title:"
            puts  book.title
          puts "Publisher:"
            puts  book.publisher
          puts "Description:"
            puts  book.description
        elsif input == "list"
          list_titles
        elsif input = "exit"
        else
        puts "Invalid input please put number of title you would like more
        information on, list or exit. "
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
