require_relative 'mercado'
require_relative 'produto'

produto1 = Produto.new
produto1.name = 'cerveja'
produto1.price = 5
mercado = Mercado.new(produto1)

mercado.comprar
