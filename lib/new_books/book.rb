class NewBooks::Book

  attr_accessor :title, :publisher, :description
  def self.newest_books
    #this should return the instances of newly published books
    self.scrape_books
  end

  def self.scrape_books
    books = []
    books << self.scrape_site
    books

  end

  def self.scrape_site
    doc = Nokogiri::HTML(open("https://www.sfsite.com/charlesdelint/"))

    book.title = []
    book.description =[]
    book.publisher = []
    i = 0
    number_of_books = doc.search("a.sitelinx").count
    while i < number_of_books
      book.title << doc.search("a.sitelinx")[i].text
      book.publisher << "Triskell Press"
      book.description << "fake data"
      #  descriptions << doc.search("span.excerpttext")[i].text.strip
      i += 1
    end
  end


end
