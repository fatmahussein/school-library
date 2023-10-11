require './basedecorator'

class Capitalizedecorator < Basedecorator
  def correct_name
    @name.correct_name.capitalize
  end
end
