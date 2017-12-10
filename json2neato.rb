require 'rubygems'
require 'json'

file = open('data.json')
json = file.read

parsed = JSON.parse(json)

output = File.open( 'graph.dot','w')
output << "graph G {\n"
output << "splines=true;\n"
output << "orientation=portrait;\n"
output << "overlap=false;\n"
output << "fontsize=12;\n"
output << "ratio=\"fill\";\n"
output << "size=\"8.3,11.7!\";\n"
output << "margin=0;\n"

parsed['relations'].each do |r|
  if r['type'] == 'was killed by'
    output << "\"#{r['target']}\" -- \"#{r['source']}\" [dir=forward, style=bold, decorate=true];"
    output << "\n"
  end
end
output << '}'

output.close
