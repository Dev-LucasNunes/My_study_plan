# def talk (first_name, last_name)
#   puts "#{first_name} #{last_name}"
# end

# first_name = 'Lucas'
# last_name = 'Nunes'

# talk(first_name, last_name) #posso colocar o nome direto aqui dentro tbm, e o nuemro de parametros passados no metodo tem q ser igual quando chama o metodo


#posso fazer sem parametro obrigatório

def signal (color = 'Vermelho')
  puts "o sinal está #{color}"
end

signal

color = 'verde'
signal(color)

signal('amarelo')

#quando eu faço assim, se eu não colocar nenhum parametro na chamada ele vai pegar o parametro pre definido na montagem do metodo, se eu colocar um parametro quando chamar a função ai ele usa esse que eu coloquei 
