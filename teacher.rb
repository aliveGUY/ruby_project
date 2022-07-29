require './person'

class Teacher < Person
  def initialize(specialization = 'undefined', age = 0, name = 'undefined', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  attr_accessor :specialization

  def edit(array)
    print 'Specialization: '
    @specialization = gets.chomp
    array << self
    puts 'Created new Teacher'
    super(array)
  end

  attr_reader :specialization

  def can_use_services?
    true
  end
end
