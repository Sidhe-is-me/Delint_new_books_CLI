class NewBooks::Book

  attr_accessor :title, :publisher, :description

  @@all = []

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
    book = []
    doc = Nokogiri::HTML(open("https://www.sfsite.com/charlesdelint/"))

    # doc.search('tr td.excerpttext').each do |table|
    #
    #   doc.search("a.sitelinx").each do |title|
    #     binding.pry
    #     book[:title] = title.text
    #   end
    #     doc.search("span.excerpttext").each do |description|
    #     book[:description] = doc.search("span.excerpttext").first.text.strip
    #   end
    #     book [:publisher] = "Triskell Press"
    #
    #   #book << {title: title, description: description, publisher: publisher }
    #    #binding.pry
    #   end
    # end
    #   book
end


end
