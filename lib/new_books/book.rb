class NewBooks::Book

  attr_accessor :title, :publisher, :description

  @@all = []

  #need to initialze a book from the scraper book_hash

  def self.newest_books
    #this should return the instances of newly published books
    self.scrape_books
  end

  def self.scrape_books
    books = []
    books << self.scrape_site
    books

  end



end
