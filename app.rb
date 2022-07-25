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

    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp

    if input == '1'
      print 'Has parent permission? [Y/N] '
      letter = gets.chomp
      permission = letter.upcase == 'Y'
      person = Student.new(age, @classroom, name, parent_permission: permission)
    else
      print 'Specialization: '
      specialization = gets.chomp
      person = Teacher.new(age, specialization, name)
    end
    @persons.push(person)
    puts 'Created new person'
  end

  def create_book
    book = Book.new
    book.create(@books)
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

    print "\n#{git_books}Select a book from the previous list by number: "
    book_index = gets.chomp

    print "\n#{git_people}Select a person from the previous list by number (not id): "
    person_index = gets.chomp

    print 'Date: '
    date = gets.chomp
    person = @persons[person_index.to_i]
    book = @books[book_index.to_i]
    @rentails << Rentail.new(date, person, book)
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
      puts "Date: #{rentail.date}, Book: #{rentail.book} by #{rentail.author}"
    end
  end
end
