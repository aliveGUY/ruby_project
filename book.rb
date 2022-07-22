class Book
  attr_accessor :title, :author
  attr_reader :rentals
  
  def initialize(title, author)
    @title = title
    @author = author
    @rentail = []
  end

  def save_rental(rental)
    @rentail << rental unless @rentail.include?(rental)
  end
end
