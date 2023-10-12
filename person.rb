require './nameable'
require './trimmerdecorator'
require './capitalizedecorator'
require './rental'
require './book'

class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age:, name: 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    @rentals << Rental.new(book, date, self)
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(age: 22, name: 'maximilianus')
person.correct_name
capitalized_person = Capitalizedecorator.new(person)
capitalized_person.correct_name
capitalized_trimmed_person = Trimmerdecorator.new(capitalized_person)
capitalized_trimmed_person.correct_name

book = Book.new('Atomic Habits', 'James Clear')
rental_person = Rental.new(person: person, book: book, date: '2023')
p rental_person
