require './nameable'

class Basedecorator < Nameable
  def initialize(name)
    super()
    @name = name
  end

  def correct_name
    @name.correct_name
  end
end
