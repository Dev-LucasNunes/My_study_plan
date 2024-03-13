class Foo
  def bar
    puts self
  end
end

foo = Foo.new
puts foo
foo.bar

#self é a propria instancia
