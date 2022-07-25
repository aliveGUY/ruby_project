require './nameable'

class Person < Nameable
  def initialize(parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    print 'Age: '
    @age = gets.chomp
    print 'Name: '
    @name = gets.chomp
    @parent_permission = parent_permission
    @rentail = []
  end
  attr_accessor :name, :age, :rentail
  attr_reader :parent_permission, :id

  def save_rental(rental)
    @rentail << rental unless @rentail.include?(rental)
  end

  def can_use_services?
    of_age? || parent_permission
  end

  def correct_name
    name
  end

  private

  def of_age?
    age >= 18
  end
end
