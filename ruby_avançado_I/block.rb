#block é como seu fosse uma função anonima

# 5.times {puts "exec the block"} #block é definido em chaves , é um conjunto de instruçoes


# sum = 0
# numbers = [5, 10, 7]
# numbers.each {|number| sum += number} #isso que esta na chave é um block, então ele pode ser usado como parametro
# puts sum

#ele ta pegando cada numero e somando ao sum, mas a cada vez o sum aumenta o valor

# foo = {2 => 3, 4 => 5}

# foo.each do |key, value|
#   puts key
#   puts value
#   puts key * value
# end  #blocos da pra ser passado assim também, dentro  por exemplo do each

#agora vamos criar um metodo que recebe um block como parametro

# def foo
#   yield
#   yield #toda vez que tiver essa palavra ele busca um bloco para ser usado aqui
# end

# foo do
#   puts 'esse é o bloco que vai ser chamado no lugar de yield que esta no metodo acima'
# end

# def foo
#   if block_given? #verifica se o bloco foi passado
#     yield
#   else
#     puts "bloco nao foi passado"
#   end
# end

# foo
# foo {puts "parametro do tipo block"}

  #só pode passar um bloco como metodo


  def foo(name, &block)
    @name = name
    block.call
  end

  foo('lucas') {puts "olá, #{@name}"} #parametro normal, eu posso passar um bloco de varias linhas como parametro também
