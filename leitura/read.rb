puts "----Lista de times----"

file = File.open('list.txt')

file.each do |line|
  puts line
end
