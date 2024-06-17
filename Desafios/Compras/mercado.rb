class Mercado
  def initialize(produto)
      @produto = produto
  end

  def comprar
      print "Você comprou o produto #{@produto.name} no valor de #{@produto.price} \n"
  end
end
