require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new 'Bob', 'Bog Lake'
  end

  describe '#new' do
    it 'returns new book object' do
      expect(@book).to be_an_instance_of Book
    end

    it 'takes two or none parameters' do
      book = Book.new 'Author', 'Title'
      expect(book).to be_an_instance_of Book

      book = Book.new
      expect(book).to be_an_instance_of Book
    end
  end

  describe '#author' do
    it 'returns the correct author' do
      expect(@book.author).to eql 'Bob'
    end
  end

  describe '#title' do
    it 'returns the correct title' do
      expect(@book.title).to eql 'Bog Lake'
    end
  end
end
