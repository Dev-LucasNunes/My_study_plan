require 'bundler/setup'
require 'ruby_algorithm'

# i = 0
# while i < input.length - 1
#   j = 0
#   while j < input.length - i - 1
#     if input[j] > input[j + 1]
#       temp = input[j]
#       input[j] = input[j + 1]
#       input[j + 1] = temp
#     end
#     j += 1
#   end
#   i += 1
# end

array_desordenado = [6, 3, 0, 5, 10, 2, 27, 7]
array_ordenado = RubyAlgorithm.bubble_sort(array_desordenado)
puts array_ordenado.inspect
