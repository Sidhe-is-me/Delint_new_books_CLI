
class Scraper

  def self.scrape_site(page)
    #doc = Nokogiri::HTML(open("https://www.sfsite.com/charlesdelint/"))
    doc = Nokogiri::HTML(open(page))
    books = []
    i = 0
    number_of_books = doc.search("a.sitelinx").count
    while i < 14
      title = doc.search("a.sitelinx")[i].text
      publisher ="Triskell Press"
      description = doc.search("span.excerpttext")[i].text
      books << {title: title , description: description , publisher: publisher}
      i += 1
    end
    binding.pry
    books
  end
end
