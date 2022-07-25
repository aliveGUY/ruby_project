require './person'

class Teacher < Person
  def initialize(array)
    super()
    print 'Specialization: '
    @specialization = gets.chomp
    array << self
    puts 'Created new Teacher'
  end

  def can_use_services?
    true
  end
end
