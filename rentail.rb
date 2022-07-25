require './create'

class Rentail < Createable
  def initialize(git_people, array, persons, books)
    print 'Select a book from the previous list by number: '
    book_index = gets.chomp

    print "\n#{git_people}Select a person from the previous list by number (not id): "
    person_index = gets.chomp

    print 'Date: '
    @date = gets.chomp
    @person = persons[person_index.to_i]
    @book = books[book_index.to_i]
    super(array)
    @book.save_rental(self)
    @person.save_rental(self)
  end
  attr_accessor :date
  attr_reader :vet, :book, :author

  def create(git_people, git_books, array, persons, books); end
end
