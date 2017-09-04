class NewBooks::CLI


  def call
    puts "The Newest books are:"
    list_books
  end

  def list_books
    #insert fake data for now.
    puts <<-DOC
    1. The Wind in His Heart - Triskell Press - 2017
    2 Our Lady of the Harbour - Triskell Press - 2016
    DOC
  end










































end
