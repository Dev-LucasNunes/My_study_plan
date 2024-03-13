array = [1, 2, 3, 4]

puts "\n Executando map multiplicando cada item por 2"
#map não altera o conteudo do array original
new_array = array.map do |a|
  a * 2
end

puts "\n Array original"
puts "#{array}"

puts "\n novo array"
puts "#{new_array}"

puts "\n Executando map multiplicando cada item por 2"
#map não altera o conteudo do array original
new_array = array.map! do |a|  #essa exclamação se chama bash e ela faz com que nesse caso o novo array substitua o antigo
  a * 2
end

puts "\n Array original"
puts "#{array}"

puts "\n"
