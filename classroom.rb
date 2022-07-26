class Classroom
  attr_accessor :students
  attr_reader :label

  def initialize(label, students = [])
    @label = label
    @students = students
  end

  def add_student(student)
    @students << student unless @students.include?(student)
    student.classroom = self
  end
end
