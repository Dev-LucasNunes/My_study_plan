class Computer
  def turn_on
    "turn on the computer"    #classe é só a planta
  end

  def shutdown
    'shutdown the computer'
  end
end


computer = Computer.new #agora eu criei um objeto dessa classe e ele pode acessar qualquer metodo da classe
puts computer.turn_on
