def papercut(width, height )
  if width >= height
    square = width/height
    leftover = width%height
  else
    square = height/width
    leftover = height%width
  end
  return square, leftover
end

puts papercut(29, 13)
