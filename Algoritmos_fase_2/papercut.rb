# def papercut(width, height )
#   if width >= height
#     square = width/height
#     leftover = width%height
#   else
#     square = height/width
#     leftover = height%width
#   end
#   return square, leftover
# end


def papercut(width, height )
  while width >= height
    count = width/height
    remainder = width%height
    
end

puts papercut(29, 13)

# 29/13
# 13/3
# 3/1

# O maior quadrado que pode ser cortado tem um lado de 13 (o menor dos dois lados).
# Podemos cortar 2 desses quadrados ao longo do lado de 29 (29/13 = 2).
# O que sobra é uma peça de papel de tamanho 3 x 13.
# O maior quadrado que pode ser cortado dessa peça tem um lado de 3.
# Podemos cortar 4 desses quadrados ao longo do lado de 13 (13/3 = 4).
# O que sobra é uma peça de papel de tamanho 1 x 3.
# O maior quadrado que pode ser cortado dessa peça tem um lado de 1.
# Podemos cortar 3 desses quadrados ao longo do lado de 3 (3/1 = 3).
# Somando os quadrados de todos os tamanhos, temos 2 + 4 + 3 = 9 quadrados no total.
