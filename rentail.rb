class Rentail
  def initialize(date, person, book)
    @date = date
    @book = book
    @person = person
    
    book.save_rental(self)
    person.save_rental(self)
  end
  attr_accessor :date
  attr_reader :vet, :book
end
