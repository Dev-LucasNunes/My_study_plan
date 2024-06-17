class Cachorro < Animal #isso é herança, ele consegue usar os metodos do pai Animal e os dele mesmo
  def latir
    puts "latindo"
  end
end

# da pra usar a herança na exportação tambem
#eu nao preciso colocar o require animal aqui, a nao ser que eu fosse executar algo aqui, porque o ruby vai ver o require no app.rb e vai jogar o bloco de codigos de animal e depois de cachorro e os dois vao esxistir no fluxo do app
