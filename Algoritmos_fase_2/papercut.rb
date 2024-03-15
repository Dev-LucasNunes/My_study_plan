def papercut(a, b)
  result = 0
  rem = 0

  if a < b
    a, b = b, a
  end

  while b > 0
    result += a/b
    rem = a % b
    a = b
    b = rem
  end
  
  return result
 end

 puts papercut(29, 13)
