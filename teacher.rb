require "./person.rb"

class Teacher < Person
  def initialize(specialization, name = "unknown")
    super(name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
