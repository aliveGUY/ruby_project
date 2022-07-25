require './book'
require './person'
require './rentail'
require './student'
require './teacher'
require './classroom'

class App
  def initialize
    @persons = []
    @books = []
    @rentails = []
    @classroom = Classroom.new(1)
  end

  def git_books
    return 'Theres no books yet' if @books.empty?

    @books.map.with_index do |book, index|
      "#{index}) #{book.title} by #{book.author}\n"
    end.join
  end

  def list_books
    puts git_books
  end

  def git_people
    return 'Theres no people yet' if @persons.empty?

    @persons.map.with_index do |person, index|
      "#{index}) [#{person.class.name}] ID: #{person.id}, Name: #{person.name}, Age: #{person.age}\n"
    end.join
  end

  def list_people
    puts git_people
  end

  def create_person
    print 'Create student (1) or create a teacher (2) ?'
    input = gets.chomp
    input == '1' ? Student.new(@classroom, @persons) : Teacher.new(@persons)
  end

  def create_book
    Book.new(@books)
  end

  def create_rental
    if @persons.empty?
      puts 'No people to list'
      return
    end

    if @books.empty?
      puts 'No books for rent'
      return
    end
    print "\n#{git_books}"
    Rentail.new(git_people, @rentails, @persons, @books)
    puts 'Rental created successfully'
  end

  def git_persons
    loop
    print 'ID of person: '
    id = gets.chomp.to_i

    @persons.each_with_index do |person, index|
      puts index
      return index if person.id == id
    end
  end

  def list_rentails
    if @rentails.empty?
      puts 'No rentails yet'
      return
    end
    person_index = git_persons
    @persons[person_index].rentail.each do |rentail|
      puts "Date: #{rentail.date}, Book: #{rentail.book.title} by #{rentail.book.author}"
    end
  end
end
