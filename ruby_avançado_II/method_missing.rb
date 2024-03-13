#
class Fish
  def method_missing(method_name)
    puts "fish dont have #{method_name} behavior"
  end

  def swin
    puts "fish swimming"
  end
end

fish = Fish.new
fish.swin
fish.walk
fish.run

#seve para quando ele não acha o metodo na classe
