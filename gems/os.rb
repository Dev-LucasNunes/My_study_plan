require 'os'

def my_os
  if OS.windows?
    "Windows"
  elsif OS.mac?
    "Mac"
  elsif OS.linux?
    "Linux"
  else
    "Não consegui indentificar"
  end
end

puts "meu PC possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional é #{my_os}"

# gem list mostra suas gems
