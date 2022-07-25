require './person'

class Student < Person
  def initialize(classroom, age = 0, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
    classroom.add_student(self)
  end

  attr_accessor :classroom

  def create(array)
    print 'Age: '
    @age = gets.chomp
    print 'Name: '
    @name = gets.chomp
    print 'Has parent permission? [Y/N] '
    letter = gets.chomp
    @parent_permission = letter.upcase == 'Y'
    super(array)
    puts 'Created new Student'
  end
  def play_hooky
    "¯\(ツ)/¯"
  end
end
