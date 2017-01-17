class TodoTron
  attr_reader :items
  def initialize
    @items = []
  end
  def add_item(description)
    @items.push(description)
  end

end