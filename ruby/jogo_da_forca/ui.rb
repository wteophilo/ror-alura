def pula_linha(quantidade)
  for linha in 1..quantidade
    puts "\n"
  end
end

def da_boas_vindas
  puts "Bem vindo ao jogo da forca"
  puts "Qual é o seu nome?"
  nome = gets.strip
  pula_linha(4)
  puts "Começaremos o jogo para você #{nome}"
  nome
end

def escolhe_palavra_secreta
  puts "Escolhendo uma palavra secreta..."
  palavra_secreta = "programador"
  puts "palavra secreta com #{palavra_secreta.size} letras... boa sorte"
  palavra_secreta
end

def nao_quero_jogar?
    puts "Deseja jogar novamente? (S/N)"
    continua = gets.strip
    nao_quero_jogar = continua.upcase == "N"
end

def cabecalho_de_tentativa(chutes,erros,mascara)
  pula_linha 4
  puts "Palavra secreta: #{mascara}"
  puts "Erros até agora #{erros}"
  puts "chutes até agora #{chutes}"
end

def pede_um_chute
  puts "Entre com uma letra ou uma palavra"
  chute = gets.strip
  puts "Será que acertou? Você chutou #{chute}"
  chute
end


def avisa_chute_efetuado(chute)
  puts "Você já chutou #{chute}"
end

def avisa_letra_nao_encontrada
  puts "Letra não encontrada"
end

def avisa_acertou_letra_encontrada(total_encontrado)
  puts "Letra encontrada #{total_encontrado} vezes."
end

def avisa_acertou
  puts "Parabes! Acertou"
end

def avisa_errou
  puts "Que pena ... errou"
end

def avisa_total_pontos(pontos_ate_agora)
  puts "Você ganhou #{pontos_ate_agora} pontos."
end
