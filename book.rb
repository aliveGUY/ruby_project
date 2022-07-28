require './create'

class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(author = 'undefined', title = 'undefined')
    @title = title
    @author = author
    @rentail = []
  end

  def edit(array)
    @title = title
    @author = author

    print 'Title: '
    @title = gets.chomp
    print 'Author: '
    @author = gets.chomp
    array << self
    puts 'Book created successfully'
  end

  def save_rental(rental)
    @rentail << rental unless @rentail.include?(rental)
  end
end
