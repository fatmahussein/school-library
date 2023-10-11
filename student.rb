require './person'

class Student < Person
  def initialize(classroom)
    super(name, age)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
