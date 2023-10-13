require_relative 'app'

puts 'Welcome to our school library'

MENU_OPTIONS = {
  '1' => :list_books,
  '2' => :list_people,
  '3' => :create_person,
  '4' => :create_book,
  '5' => :create_rental,
  '6' => :list_all_rentals,
  '7' => :exit_program
}.freeze

def choose_option
  puts 'Please choose an option by selecting a number:'
  MENU_OPTIONS.each { |key, value| puts "#{key}. #{value.to_s.tr('_', ' ')}" }

  option = gets.chomp

  if MENU_OPTIONS.include?(option)
    send(MENU_OPTIONS[option])
  else
    puts 'Invalid input. Try again.'
  end
end

def exit_program
  puts 'Thank you for using the app.'
  exit!
end

def main
  app = App.new
  app.start
end

main
