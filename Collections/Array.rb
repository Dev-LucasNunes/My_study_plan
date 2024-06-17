estados = ["Pernambuco"]

estados.push ("são paulo") #push coloca elementos no final do array

estados.insert(0, 'acre', 'amapa') #insert coloca na posição que vc quer, no caso eu coloquei a posição 0 e passei dois argumentos, entao ele coloca na 0 e na 1, e não pode ter espaço para abrir o parenteses

estados[1] = "Rio de janeiro" #Para modificar qualquer elemento

# puts estados [1..2] #chamar no intervalo especifico


# puts estados[-1] chama de tras para frente, no caso o ultimo é -1 e assim vai, o intervalo tambem vale para os negativos

# puts estados.first pega o primeiro elemento
# puts estados.last pega o ultimo

# estados.count mostra quantos elementos
# puts estados.length tbm mostra
# puts estados.empty? pergunta se o array esta vazio
# puts estados.include?("são paulo") pergunta se tal valor esta nesse array

#deletar
# puts estados
# estados.delete_at(2) deleta a posição que vc colocou
# puts estados

# estados.pop deleta o ultimo
#estados.shift delata o primeiro
