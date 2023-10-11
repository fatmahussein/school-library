require './nameable'
require './trimmerdecorator'
require './capitalizedecorator'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age:, name: 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end


person = Person.new(age: 22, name: 'maximilianus')
person.correct_name
capitalized_person = Capitalizedecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = Trimmerdecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
