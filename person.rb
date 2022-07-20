class Person
  def initialize(age, name = "Unknown", parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :parent_permission
  attr_reader :id
  attr_reader :name
  attr_reader :age
  attr_writer :name
  attr_writer :age

  def can_use_services?
    (is_of_age?() || parent_permission) ? true : false
  end

  private
  def is_of_age?
    age >= 18 ? true : false
  end
end
