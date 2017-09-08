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
  movimento = gets.upcase.strip
end

def game_over
  pula_linha(4)
  puts "Game Over"
end

def direcao_invalida
  pula_linha 2
  puts "Direção Inválida"
end
