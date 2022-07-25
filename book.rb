require './create'

class Book < Createable
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title = 'unknown', author = 'unknown')
    @title = title
    @author = author
    @rentail = []
  end

  def save_rental(rental)
    @rentail << rental unless @rentail.include?(rental)
  end

  def create(array)
    print 'Title: '
    @title = gets.chomp
    print 'Author: '
    @author = gets.chomp
    super(array)
    puts 'Book created successfully'
  end
end
