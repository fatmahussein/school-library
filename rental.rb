class Rental
  attr_accessor :date, :book, :name

  def initialize(date, book, name = 'unknown')
    @date = date
    @book = book
    @name = name
  end
end
