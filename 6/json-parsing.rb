require 'pry'
require 'json'
require 'httparty'

contents = File.read '/Users/james/Code/class-notes/6/rails.json'
parsed   = JSON.parse contents
# parsed = HTTParty.get 'https://api.github.com/repos/rails/rails'

# puts "#{contents.class} | #{parsed.class}"

stars = parsed['stargazers_count']
puts "There are #{stars} stars"

# parsed['owner']['html_url']
owner     = parsed['owner']
owner_url = owner['html_url']
puts "Owner url is #{owner_url}"

owner_json = owner.to_json
puts "Owner json is #{owner_json}"