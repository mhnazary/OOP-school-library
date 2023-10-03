trequire_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(specialization, name: 'Unknown', age: nil, parent_permission: true)
    super(age, parent_permission: parent_permission, name: name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
