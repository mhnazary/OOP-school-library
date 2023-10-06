require_relative 'app'

# This method prints the options the user can choose from and gets the user input
def print_options
  puts ''
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

# This method is the main method that will run the app
def main
  app = App.new

  loop do
    print_options
    option = gets.chomp.to_i

    if option == 7
      puts 'Thank you for using this app!'
      break
    elsif option.between?(1, 6)
      case option
      when 1
        app.list_books
      when 2
        app.list_people
      when 3
        app.create_person
      when 4
        app.create_book
      when 5
        app.create_rental
      when 6
        app.list_rentals
      end
    else
      puts 'Error: Invalid number, try again'
    end
  end
end

main
