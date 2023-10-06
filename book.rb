class Book
  attr_accessor :title, :author, :rentals

  # constructor method for Book class that takes a title and author as arguments
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
    rental.book = self
  end
end
