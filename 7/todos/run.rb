require_relative 'todotron'
require_relative 'todo'
tron = TodoTron.new

puts 'Welcome to TodoTron'
loop do
  puts 'Please make a selection:'
  puts '1. List todos'
  puts '2. Add todo'
  puts '3. Complete todo'

  print '> '
  input = gets.chomp

  if input == '1'
   puts tron.items
  elsif input == '2'
    print 'New Item: '
    description = gets.chomp
    tron.add_item description
  elsif input == '3'
    print 'Mark as Complete:'
    description = gets.chomp
    tron.mark_complete description
  else
    puts "Unrecognized input: #{input}. Try again"
  end
end