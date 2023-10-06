require_relative 'person'
class Teacher < Person
  attr_accessor :specialization

  # constructor method for Teacher class that takes a specialization, name and age as arguments
  def initialize(specialization, name = 'Unknown', age = nil, parent_permission: true)
    super(name, age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
