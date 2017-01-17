require 'csv'
require_relative 'todo'

class TodoTron
  attr_reader :items
  def initialize
    @items = []
  end
  def add_item(description)
    item = Todo.new description
    @items.push(item)
  end
  def mark_complete(description)
    # @items.find(description)
    item = find_item description
    if item
        item.done!
    end

  end
  def find_item(description)
    @items.each do |item|
      if item.description == description
        return item
      end
    end
    puts 'WARNING: invalid item description'
    return nil
  end
  def export_csv(path)
    CSV.open(path, 'w') do |csv|
      csv << ['Item Name', 'Done?']
    @items.each do |item|
      csv << [item.description, item.done?]
    end
    end
    puts "Path is #{path}"
  end
  def self.load_csv(path)
    tron = TodoTron.new

    #load in items
    CSV.foreach(path, headers: true) do |row|
      tron.add_item row['Item Name']
      if row['Done'] == 'true'
        tron.mark_complete row['Item Name']
      end
    end
    tron
  end
end