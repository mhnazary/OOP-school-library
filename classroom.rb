class Classroom
  attr_accessor :label

  #   constructor method for Classroom class that takes a label as an argument
  #   and sets it as an instance variable
  def initialize(label)
    @label = label
    @students = []
  end

  # method that returns the students in the classroom as an array of Student objects
  def add_student(student)
    @students << student
    student.classroom = self
  end

  attr_reader :students
end
