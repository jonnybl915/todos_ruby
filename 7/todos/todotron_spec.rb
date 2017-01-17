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
end