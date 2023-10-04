require_relative 'classroom'
require_relative 'person'

class Student < Person
  attr_reader :classroom

  # constructor method for Student class that takes an age, parent_permission and name as arguments
  def initialize(age, parent_permission: true, name: 'Unknown')
    super(age, parent_permission: parent_permission, name: name)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
