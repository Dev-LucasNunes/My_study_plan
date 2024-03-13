# puts /by/ =~ 'ruby' #devolve a posição inicial da primeira letra que vc ta procurando

# phrase = 'hello lucas'
# puts match_data = /cas/.match(phrase)

# puts match_data.pre_match #mostra o que tem antes

# post_match

# teste = /[1-5]/.match('123') #é bom para criar mascara de telefone
# puts teste

# puts /a-z/.match('oi')

# puts /\d/.match('A4') para pegar só o numero

# telefone = '11-943195830'
# puts /[0-9]{2}-[0-9]{8}/.match(telefone)
puts /\d{2}-\d{8, }/.match('11-943195830') # colocar virgula e o espaço debntro das chaves quer dizer 8 ou mais caracteres
