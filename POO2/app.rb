# require './animal.rb' #é como um export, import
require_relative 'animal'
require_relative 'cachorro'
#esse require segue a ordem, se vc inverter vai dar errado porque o cachorro herda no animal

puts '--Animal--'
animal = Animal.new
animal.pular

cachorro = Cachorro.new
cachorro.pular
cachorro.latir

#desse jeito o require vai seguir o caminho que está lá, então por exemplo: se eu estou na pasta anterior Estudo ruby e chamo de lá assim ruby POO2/app.rb ele vai ver o caminho do require que fala q o arquivo esta nessa pasta mesmo, assim ele não vai achar, para isso tem o require_relative, que vai olha o nome da pasta e ja achar q esta dentro dela, ele leva em conta a pasta aonde o arquivo app esta sendo executado, ai ele ve que nela tem um arquivo chamado animal, ai ele ja acha
