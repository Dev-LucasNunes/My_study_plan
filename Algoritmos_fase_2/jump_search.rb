# require 'bundler/setup'
# require 'ruby_algorithm'

# def jump_search(array, k)
#   m = Math.sqrt(array.length).to_i
#   index = 0

#   while index < array.length
#     if array[index] > k
#       search_array = array[index - m..index]
#       target = linear_search(search_array, k)
#       if target
#         position = index - m + target[0]
#         return position
#       end
#     end
#     index += m
#   end
#   nil
# end



# # array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
# # puts jump_search(array, 55)

