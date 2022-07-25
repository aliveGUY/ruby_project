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
    super()
    print 'Specialization: '
    @specialization = gets.chomp
    array << self
    puts 'Created new Student'
  end
end
