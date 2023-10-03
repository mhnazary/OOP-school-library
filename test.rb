require_relative 'person'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

# Create a new object of the Person class
person = Person.new(22, 'maximilianus')

# Create a new object of the CapitalizeDecorator class
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name

# Create a new object of the TrimmerDecorator class
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
