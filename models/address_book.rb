require_relative 'entry'
require_relative 'controllers/menu_controller'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)

    index = 0
    entries.each do |entry|

      if name < entry.name
        break
      
      index+=1
    end

    entries.insert(index, Entry.new(name, phone_number, email))
  end




  menu = MenuController.new

  system "clear"
  puts "WelcomsAWSasasaSae to AddressBloc!"

  menu.main_menu

end
