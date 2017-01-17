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
    @items.each do |item|
      if item.description == description
        item.done!
      end
    end
  end

end