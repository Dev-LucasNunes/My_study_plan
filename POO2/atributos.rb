class Dog
  attr_accessor :name, :age
end

dog = Dog.new
dog.name = "Marlon"
puts dog.name

dog.age = "1 ano"
puts dog.age

dog = Dog.new
dog.name = "ted"
puts dog.name

dog.age = "2 anos"
puts dog.age
