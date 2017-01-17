require 'rspec'
require_relative 'todotron'
require_relative 'todo'

describe TodoTron do
  it 'should be able to keep track of multiple todos' do
    tron = TodoTron.new

    # It has no todo items
    expect(tron.items.count).to eq 0

    # I add an Item
    tron.add_item('take the trash out')
    # tron.items.push(item)
    # ^ this would make the test drive the data within the object

    # It has one Item
    expect(tron.items.count).to eq 1
  end

  it 'can mark the items as complete' do
    tron = TodoTron.new
    tron.add_item('Learn ruby')

    # Record that task as done
    tron.mark_complete('Learn ruby')
    # Can see that it is done
    item = tron.items.first

    expect(item.done?).to eq true
  end

  it 'can find an item based on description' do
    tron = TodoTron.new
    tron.add_item('fix the bugs')

    i = tron.find_item 'fix the bugs'

    expect(i)

  end

end