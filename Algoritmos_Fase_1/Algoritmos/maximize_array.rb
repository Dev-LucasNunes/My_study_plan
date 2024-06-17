require 'bundler/setup'
require 'ruby_algorithm'

##jeito sem usar metodos ruby###

# def maximize_array(arr, k)
#   sum = 0
#   sum_negative = 0
#   result = 0

#     arr.each do |nbr|
#       if nbr.negative?
#         positive = nbr * -1
#         sum_negative += positive
#       else
#       sum += nbr
#       end
#       result = sum + sum_negative
#     end
#   puts result
# end
# arr = [-2, 0, 5, -1, 2]
# k = 4

# maximize_array(arr, k)


###com metodos ruby###

# def maximum_sum(arr, k)
#   n = arr.length

#   (1..k).each do |_|
#     min = arr.min
#     index = arr.index(min)
#     break if min == 0
#     arr[index] = -arr[index]
#   end

#   sum = arr.sum
#   return sum
# end

# arr = [9, 8, 8, 5]
# k = 2
# resultado = maximize_array(arr, k)
# puts resultado

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

def jump_search(array, k)
   target_position = array.index(k)
   m = Math.sqrt(array.length).to_i
  index = 0
  j = 0
  while index < array.length
    if array[index] > k
        search_array = array[index-m..index]
        target = linear_search(search_array, k)
        return target
    end
    index += m
  end
end
array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
puts jump_search(array, 55)
# f = array[2..5]
# puts f.inspect
