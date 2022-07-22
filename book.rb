class Book
  def initialize(title, author)
    @title = title
    @author = author
    @rentail = []
  end
  attr_accessor :title, :author, :rentail
end
