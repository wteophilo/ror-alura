def pula_linha(quantidade)
  for linha in 1..quantidade
    puts "\n"
  end
end

def da_boas_vindas
  puts "Bem vindo ao jogo da foge foge"
  puts "Qual é o seu nome?"
  nome = gets.strip
  pula_linha(4)
  puts "Começaremos o jogo para você #{nome}"
  nome
end

def desenha_mapa(mapa)
  puts mapa
end

def pede_movimento
  puts "Para onde deseja ir?"
  movimento = gets.strip
end

def fora_do_limite
  puts "Ops você passou do limite"
end

def bate_na_parede
  puts "Ops você bateu na parede"
end
