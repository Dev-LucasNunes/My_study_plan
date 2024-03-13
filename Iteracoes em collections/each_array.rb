names = ['Lucas', 'Léo', 'Paulo']

name = 'Pedro'

names.each do |name|
  puts name + ' é o meu nome'
end

puts name

#o name que foi passado como parametro para o each não altera a variavel name que está fora, ela só serve no bloco do each
