#utilizando uma collections do tipo array, escreva um programa que receba 3
# numeros e no final exiba o resultado de cada um deles elevado a segunda potência

# array = []

# 3.times do
# puts "escreva um numero:\n"
# array.push (gets.chomp.to_i)
# end

# new_array = array.map do |element|
#   element ** 2
# end

# puts "\nResultado elevado ao quadrado:"
# puts new_array.join(', ') #join transforma os numeros em string e no parenteses eu coloco o que separa eles


# Crie uma collection do tipo hash e permita que o usuario crie tres elementos informando a chave e o valor. no final do programa para cada um desses elementos imprima a frase "uma das chaves é *** e o seu valor é ***"

# hash = {}

# 3.times do |i|
#   puts "Digite a chave #{i + 1}:"
#   chave = gets.chomp

#   puts "Digite o valor #{i + 1}:"
#   valor = gets.chomp

#   # Adiciona o par chave-valor ao hash
#   hash[chave] = valor
# end

# # Para cada par chave-valor no hash, imprima a frase correspondente
# hash.each do |chave, valor|
#   puts "Uma das chaves é #{chave} e o seu valor é #{valor}"
# end


# dado o seguinte hash
# numbers = {A: 10, B: 30 2, C: 20, D: 25, E: 15}
# Crie uma instrução que seleciona o maior valor deste hash e no final imprima a chave
# e valor do elemento resultante

numbers = {A: 10, B: 30, C: 20, D: 25, E: 15}

# Encontra a chave com o maior valor
chave_maior_valor, valor_maior = numbers.max_by { |chave, valor| valor }

# Imprime a chave e o valor correspondente
puts "A chave com o maior valor é #{chave_maior_valor} e seu valor é #{valor_maior}."
