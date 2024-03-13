require 'bundler/setup'
require 'ruby_algorithm'

def jump_search(array, k)
  target_position = array.index(k)
  m = Math.sqrt(array.length).to_i
 index = 0
 j = 0
 while index < array.length
   if array[index] > k
       search_array = array[index-m..index]
       target = linear_search(search_array, k)
       position = index - m + target[0]
       if target
        puts "O número #{k} Foi encontrado na posição #{position}"
       end
   end
   index += m
 end
end
array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
jump_search(array, 55)
