require "cpf_cnpj"

puts "Digite seu CPF (somente os números):"
cpf_number = gets.chomp

# Verifica se o CPF tem a quantidade correta de dígitos (11) e essa regex ~ /\A\d+\z/ é pra ver se só tem numero
until cpf_number.length == 11 && cpf_number =~ /\A\d+\z/
  puts "CPF inválido. Por favor, insira exatamente 11 números."
  cpf_number = gets.chomp
end

#until é um loop, ele só sai se a condição for satisfeita

verify = CPF.valid?(cpf_number)

if verify
  puts "CPF válido"
else
  puts "CPF inválido"
end
