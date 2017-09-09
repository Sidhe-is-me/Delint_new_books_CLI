#def self.scrape_site
  # doc = Nokogiri::HTML(open("https://www.sfsite.com/charlesdelint/"))
#I need to make each book an object and not push each variable into a seperate array.
#The code below I can't use because of the index variable
  # book = self.new
  # book.title = doc.search("a.sitelinx")[i].text
  # book.description = doc.search("span.excerpttext")[i].text.strip
  # book.publisher = "Triskell Press"
  # book
#this code does not work because it is not indexed to the specific item I want to return
  # book = self.new
  # book.title = doc.search("a.sitelinx").text
  # book.description = doc.search("span.excerpttext").text.strip
  # book.publisher = "Triskell Press"
  # book

  #  i = 0
  # book = self.new
  # number_of_books = doc.search("a.sitelinx").count
  # while i < number_of_books
  #   book << title = doc.search("a.sitelinx")[i].text
  #   book << publisher ="Triskell Press"
  #   book << description = "fake data"
    # book.description << doc.search("span.excerpttext")[i].text.strip
    # i += 1
def self.scrape_site
doc = Nokogiri::HTML(open("https://www.sfsite.com/charlesdelint/"))
binding.pry
  #   book_hash = {
  #   :title = doc.search("a.sitelinx")[i].text
  #   :publisher = "Triskell Press"
  #   :description =doc.search("span.excerpttext")[i].text.strip
  # }
  #   book.hash.each_with_index do |(key,value),i|
  #     puts "#{index}. #{key} #{value}"
  #   end
end
  # i = 0
  # number_of_books = doc.search("a.sitelinx").count
  # while i < number_of_books
  #   title << doc.search("a.sitelinx")[i].text
  #   publisher << "Triskell Press"
  #   description << "fake data"
  #   #  descriptions << doc.search("span.excerpttext")[i].text.strip
  #   i += 1
  #end
