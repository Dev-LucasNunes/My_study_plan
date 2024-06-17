def selection_sort(array)
  i = 0
  while i < array.length
     j = i + 1
     min = array[i]
     min_index = i
     while j < array.length
       if array[j] < min
         min = array[j]
         min_index = j
       end
       j += 1
     end
     array[i], array[min_index] = array[min_index], array[i]
     i += 1
  end
  array
 end

# array = [64, 25, 12, 27, 22, 11]
# puts selection_sort(array).inspect
