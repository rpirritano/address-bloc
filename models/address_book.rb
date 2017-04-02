require_relative 'entry'
require_relative 'controllers/menu_controller'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def remove_entry(name, phone_number, email)
    delete_entry = nil;

    @entries.each do |entry|
      if name == entry.name && phone_number == entry.phone_number && email == entry.email
        delete_entry = entry
      end
    end

    @entries.delete(delete_entry)
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
