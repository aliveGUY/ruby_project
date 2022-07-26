require './person'

class Student < Person
  def initialize(classroom, age = 0, name = 'undefined', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def edit(array)
    super
    print 'Has parent permission? [Y/N] '
    letter = gets.chomp
    @parent_permission = letter.upcase == 'Y'
    array << self
    puts 'Created new Student'
    classroom.add_student(self)
  end

  attr_accessor :classroom

  def play_hooky
    "¯\(ツ)/¯"
  end
end
