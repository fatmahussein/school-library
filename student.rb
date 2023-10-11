require "./person.rb"

class Student < Person
  def initialize(classroom, name = "unknown")
    super(name, age)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
