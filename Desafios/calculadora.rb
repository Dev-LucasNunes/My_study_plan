result = ''
loop do
  puts 'Selecione uma das seguintes opções'
  puts '1- Iniciar calculadora'
  puts '0- Sair'
  print 'Opção: '

  option = gets.chomp.to_i

  if option == 1
    print "Digite um número: "
    number1 = gets.chomp.to_i
    print "Digite a operação (+ Soma, - Subtração, x Multiplicação, / Divisão): "
    operation = gets.chomp
    print "Digite um número: "
    number2 = gets.chomp.to_i
    operation_result = case operation
                          when "+"
                          number1 + number2
                          when "-"
                            number1 - number2
                          when "x"
                            number1 * number2
                          when "/"
                            if number2 !=  0
                            number1 / number2
                            else
                            "Erro: Divisão por zero"
                          end
                        else
                          "Operação inválida"
                        end
    result = "Seu resultado é #{operation_result}"
    system RUBY_PLATFORM =~ /win32/ ? "cls" : "clear"
    puts result
    puts 'Pressione Enter para continuar...'
    gets
  elsif option ==  0
    break
  else
    result = "opção inválida"
    system RUBY_PLATFORM =~ /win32/ ? "cls" : "clear"
    puts result
    puts 'Pressione Enter para continuar...'
    gets
  end

  system "clear"
end
