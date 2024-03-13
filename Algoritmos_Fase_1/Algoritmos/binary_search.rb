############Binary search############

def binary_search(array, target)
  low = array.length - array.length
  high = array.length - 1
  mid = low + (high - low) / 2

  i = 0
  while i < array.length
    if i == mid && array[i] < target
      low = mid + 1
      mid = low + (high - low) / 2
      i = low - 1
    elsif i == mid && array[i] > target
      high = mid - 1
      mid = low + (high - low) / 2
      i = low - 1
    elsif target == array[mid]
      puts "A chave #{array[mid]} está exatamente na posição #{mid}"
      return
    end
    i += 1
  end
  puts "Chave não encontrada"
  return
end


# arr = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]

# binary_search(arr, 72)
