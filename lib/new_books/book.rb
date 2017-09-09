class NewBooks::Book

  attr_accessor :title, :publisher, :description
  def self.newest_books
    #this should return the instances of newly published books
    # puts <<-DOC

    # DOC
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
    descriptions =[]
    publishers = []
    number_of_books = doc.search("a.sitelinx").count
    while i < number_of_books
      titles << doc.search("a.sitelinx")[i].text
      publishers << "Triskell Press"
      descriptions << doc.search("span.excerpttext")[i].text
      i += 1
    end
  end


end
