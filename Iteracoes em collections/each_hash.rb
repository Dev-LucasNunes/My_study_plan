aulas = { aula1: "liberada", aula2: "liberada", aula3: "em breve"}
# aulas = { "aula1" => "liberada"} posso escrever assim tambem

aulas.each do |key, value|
  puts  "#{key}, #{value}" #deixa assim  para mostra ao lado certinho chave e valor
end
