require './person'

class Teacher < Person
  def initialize(specialization, age = 0,  name = 'Unknown')
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def create(array)
    print 'Age: '
    @age = gets.chomp
    print 'Name: '
    @name = gets.chomp
    print 'Specialization: '
    @specialization = gets.chomp
    super(array)
    puts 'Created new Student'
  end
end
