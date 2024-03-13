class Instrumento
  def escrever
    puts "escrevendo"
  end
end

class Teclado < Instrumento
  def escrever
    puts "teclando"
    super #o super faz com que ele use uma parte nova mas tambem use a parte do pai
  end
end

class Lapis < Instrumento
  def escrever                       #polimorfismo é vc pode chamar o mesmo metodo do pai e ter comportamentos diferentes, um faz a lapis, e o teclado como nao tem nada ele usa o do pai
    puts "Escrevendo a lápis"
  end
end

class Caneta < Instrumento
  def escrever
    puts "Escrevendo a caneta"
  end
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

lapis.escrever
caneta.escrever
teclado.escrever
