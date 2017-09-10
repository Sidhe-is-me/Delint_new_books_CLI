class NewBooks::Book

  attr_accessor :title, :publisher, :description

  @@all = []

  def initialize(book_hash)
    book_hash.each do |attributes, value|
      self.send("#{attributes}=", value)
    end
    @all << self
  end

  def self.create_from_collection(books_array)
    books_array.each do |book_hash|
      Book.new(book_hash)
    end
  end

  def self.all
      @all.to_a
  end
end
