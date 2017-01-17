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
        item.done!

  end
  def find_item(description)
    @items.each do |item|
      if item.description == description
        return item
      end
    end
  end

end