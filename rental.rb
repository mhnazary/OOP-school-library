class Rental
  attr_reader :book, :person, :date

  #   constructor method for Rental class that takes a book, person and date as arguments
  def initialize(book, person, date)
    @book = book
    @book.rentals.push(self) unless @book.rentals.include?(self)
    @person = person
    @person.rentals.push(self) unless @person.rentals.include?(self)
    @date = date
  end
end
