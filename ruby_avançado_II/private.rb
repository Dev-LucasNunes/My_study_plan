class Foo
  def call_private
    bar
  end

  private

  def bar
    puts "private method"
  end
end

foo = Foo.new
foo.call_private
foo.bar


# se eu chamo o call_private ele tem o bar dentro e consegue chamar, mas se eu chamo o bar direto ela nao vai porque é privado
#pra eu chamar um metodo privado tenho que chamar ele de dentro da classe dele
# self é a porpia instancia
#é bom para organizar e alguns metodos não serem chamados e quebrar o programa
