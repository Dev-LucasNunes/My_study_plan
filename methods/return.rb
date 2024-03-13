def compare (a, b)
  a > b
end

#eu não preciso escrever return, mas eu posso,  principalmente quando quero que o metodo encerre

a = 1
b = 2

result = compare(a, b)

puts "O resultado da comparação é #{result}"

#posso pedir o retorno direto por exemplo

puts compare(a,b)
