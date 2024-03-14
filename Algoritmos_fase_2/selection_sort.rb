def selection_sort(array)
  i = 0
  while i < array.length
    j = i + 1
    min = array[i]
    while j < array.length
      if array[j] < min
        min = array[j]
      end
        j += 1
    end
    temp = array[i]
    array[i] = min
    array[array.length - 1] = temp
    i += 1
  end
end

array = [64, 25, 12, 22, 11]
selection_sort(array)
