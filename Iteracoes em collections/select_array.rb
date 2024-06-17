# select ajuda a fazer pesquisas dentro de hashs e arrays

array = [1, 2, 3, 4, 5, 6]

selection = array.select do |element|
  element >= 4
end

puts selection
