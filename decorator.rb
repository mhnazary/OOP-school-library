require_relative 'nameable'

class Decorator < Nameable
  attr_accessor :nameable

  # this is a constructor method
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
