require './person'

class Student < Person
  def initialize(classroom, array)
    super()
    @classroom = classroom
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
