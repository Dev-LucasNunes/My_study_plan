#hashs são iguais arrays porém para acessa invez de numero usamos a definição chave valor

#criar Hash

# capitais = {}
# ou
# capitais = Hash.new

capitais = {acre: 'Rio Branco', são_paulo: 'São Paulo'}


#colocar valor dentro
capitais[:minas_gerais] = 'Belo Horizonte' #vc coloca um simbolo para ser a chave, sempre começando com 2 pontos e depois coloca valor, quando ele faz a hash ele ja coloca a chave como um simbolo

#ver chaves
# capitais.keys
#ver valores
# capitais.values


#excluir
capitais.delete(:acre) #passa o simbolo da chave para deletar e para selecionar é só passar a chave

#ver quantidade de elementos
# capitais.size e o empty? tbm funciona
puts capitais.size
