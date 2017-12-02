
puts 'var data = [{'
file = File.open("co2_data.txt")
file.each_line do |line|
  # line.split.each_slice(1).map{|a|a.join ' '}
  line.split("\n").map{|a| a.split ' '}
  puts line[0]
  # word = line.split(" ")
  # puts "\"co2: \"#{word}\","
end
