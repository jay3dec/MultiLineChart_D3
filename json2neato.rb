require 'rubygems'
require 'json'

file = open('data.json')
json = file.read

parsed = JSON.parse(json)

output = File.open( 'graph.dot','w')
output << "graph G {\n"
#output << "splines = true\n"
output << "fontsize = 8\n"
parsed['characters'].each do |c|
  if c['faction'] == 'House Stark'
    #puts "#{c['faction']} -- #{c['name']}"
    output << "\"House Stark\" -- \"#{c['name']}\""
    output << "\n"
  end
end
output << '}'
output.close
