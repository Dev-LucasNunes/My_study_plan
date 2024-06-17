# ##########Linear search###########

def linear_search(array, key)
  i = 0
  while i < array.length
    if array[i] == key
      return i, key
    end
    i += 1
  end
  puts "a chave #{key} não foi encontrada"
end

# array = [10, 50, 30, 70, 80, 20, 90, 40]
# key = 47

# linear_search(array, key)

#lembrar que quando coloca o <= em um array ele começ no 0 mas o array length conta o total dos elementos

# com each

# def linear_search(arr, key)
#   arr.each_with_index do |element, index|
#     return index if element == key
#   end
#   return "No match found"
# end

# arr = [10, 50, 30, 70, 80, 20, 90, 40]
# key = 30
# result = linear_search(arr, key)
# puts result


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
