class Animal
  def pular
    puts "pulando"
  end

  def dormir
    puts 'dormindo'
  end
end

class Cachorro < Animal #isso é herança, ele consegue usar os metodos do pai Animal e os dele mesmo
  def latir
    puts "latindo"
  end
end

cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
