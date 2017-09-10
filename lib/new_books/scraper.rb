
class Scraper

  def self.scrape_site(page)
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
