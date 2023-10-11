require './basedecorator'

class Trimmerdecorator < Basedecorator
  def correct_name
    @name.correct_name.length > 10 ? @name.correct_name[0, 10] : @name.correct_name
  end
end
