hash = {0 => 'zero', 1 => "um", 2 => 'dois', 3 => 'três'}

# para numeros tem que escrever com => com strings pode ser : ou => mas ai tem que colocar aspas na chave

puts 'selecionando keys com valor maior que 0'

selection_key = hash.select do |key, value|
  key > 0
end

puts selection_key

puts hash
