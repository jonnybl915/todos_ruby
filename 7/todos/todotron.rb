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

end