puts "hello world"

# Tipos de dados

# integer
# float
# boolean
# string
# array
# symbol
# hash

int = 10
int.class

# linguagem dinamica, não preciso especificar o tipo

# Array 

meuarray = ['lucas', 35, 'nunes']

puts meuarray
puts meuarray[2]

simbolo = :ruby_symbol
puts simbolo

# usado para representar algo e não para manipular cada coisa dele
puts simbolo.object_id 
# esse id é para ver a posição dele na memória
# usando simbolo eu consigo deixar quantos eu criar na mesma posição de memoria, o que não aconteceria com strings
# ex:

simbolo2 = :ruby_symbol
puts simbolo.object_id 
puts simbolo2.object_id 
# os dois estão na mesma posição de memória, simbolo vai sempre apontar para o mesmo lugar, então usa muito para linkar com outros objetos

# hash 

teste_hash = {nome: 'Lucas', idade: 35, peso: '80kg'}
puts teste_hash

# entrada/saida 
