require './person'

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown')
    super(age: age, name: name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
