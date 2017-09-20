class NewBooks::Book

  attr_accessor :title, :publisher, :description

  @@all = []

  def initialize(book_hash)
    book_hash.each do |attributes, value|
      self.send("#{attributes}=", value)
    end
    @@all << self
  end

  def self.create_from_collection(books_array)
    books_array.each do |book_hash|
      NewBooks::Book.new(book_hash)
    end
  end

  def self.all
      @@all.to_a
  end

  def self.search_description(keyword)
    @@all.select { |book|book.description.downcase.include? keyword.downcase }
  end
end
