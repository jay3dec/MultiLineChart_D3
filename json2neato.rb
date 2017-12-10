require 'rubygems'
require 'json'

file = open('data.json')
json = file.read

parsed = JSON.parse(json)

# puts parsed['characters']
parsed['characters'].each do |r|
  puts r['faction']
end
