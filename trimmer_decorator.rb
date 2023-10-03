require_relative 'decorator'

# this trimmer decorator will trim the name to 10 characters
class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name.slice(0, 10)
  end
end
