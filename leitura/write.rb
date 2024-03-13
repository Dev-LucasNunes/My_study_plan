File.open('list.txt', 'a') do |line| #o 'a' quer dizer append para nao sobreescrever e sim acrescentar o 'w' sobrescreve
  line.puts
  line.puts('Flamengo')
  line.puts('Cruzeiro')
end
