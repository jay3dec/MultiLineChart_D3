
puts 'var data = [{'
file = File.open("co2_data.txt")

file.each_line do |line|
  word = line.split(' ')
  puts "\t\"co2: \"#{word[1]}\","
  puts "\t\"year: \"#{word[0]}\""
  puts '}, {'
end

puts '}];'
