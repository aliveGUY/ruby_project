require './create'

class Book < Createable
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(array)
    print 'Title: '
    @title = gets.chomp
    print 'Author: '
    @author = gets.chomp
    @rentail = []
    super(array)
    puts 'Book created successfully'
  end

  def save_rental(rental)
    @rentail << rental unless @rentail.include?(rental)
  end
end
