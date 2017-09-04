class NewBooks::Book

  def self.today
    #this should return the instances of newly published books
    # puts <<-DOC
    # 1. The Wind in His Heart - Triskell Press - 2017
    # 2 Our Lady of the Harbour - Triskell Press - 2016
    # DOC


    # book_1.title
    # book_1.publisher
    # book_1.year
    # book_1.description
    #
    # book_2.title
    # book_2.publisher
    # book_2.year
    # book_2.description
    self.scrape_books
  end

  def self.scrape_books
    books = []
    books << self.scrape_site
    books

  end

  def self.scrape_site
    doc = Nokogiri::HTML(open("https://www.sfsite.com/charlesdelint/"))
    i = 0
    titles = []
    number_of_books = doc.search("a.sitelinx").count
    while i < number_of_books
      titles << doc.search("a.sitelinx")[i].text
      i += 1
    end
    binding.pry

  end


end
