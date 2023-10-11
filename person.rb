class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(id, age:, name: 'unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    @age || parent_permission
  end

  private

  def of_age
    @age >= 18
  end
end