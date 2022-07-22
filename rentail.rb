class Rentail
  def initialize(date, person, book)
    @date = date

    @book = book
    book.rentail << self

    @person = person
    person.rentail << self
  end
  attr_accessor :date
  attr_reader :vet, :book
end
