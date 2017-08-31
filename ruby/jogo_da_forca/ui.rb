def pula_linha(quantidade)
  for linha in 1..quantidade
    puts "\n"
  end
end

def da_boas_vindas
  puts"/*************************/"
  puts "/ Bem vindo ao jogo da forca */"
  puts"/*************************/"
  puts "Qual é o seu nome?"
  nome = gets.strip
  pula_linha(4)
  puts "Começaremos o jogo para você #{nome}"
  nome
end

def desenha_forca(erros)
  cabeca = "   "
  bracos = "   "
  pernas = "   "
  corpo = " "
  if erros >= 1
    cabeca = "(_)"
  end
  if erros >=2
    bracos = " | "
    corpo = "|"
  end

  if erros >= 3
        bracos = "\\|/"
    end
    if erros >= 4
        pernas = "/ \\"
    end
    puts "  _______       "
    puts " |/      |      "
    puts " |      #{cabeca}  "
    puts " |      #{bracos}  "
    puts " |       #{corpo}  "
    puts " |      #{pernas}  "
    puts " |              "
    puts "_|___           "
    pula_linha 2
end

def avisa_acertou_palavra
        puts "\nParabéns, você ganhou!"
        puts

        puts "       ___________      "
        puts "      '._==_==_=_.'     "
        puts "      .-\\:      /-.    "
        puts "     | (|:.     |) |    "
        puts "      '-|:.     |-'     "
        puts "        \\::.    /      "
        puts "         '::. .'        "
        puts "           ) (          "
        puts "         _.' '._        "
        puts "        '-------'       "
        puts
end

def nao_quero_jogar?
    puts "Deseja jogar novamente? (S/N)"
    continua = gets.strip
    nao_quero_jogar = continua.upcase == "N"
end

def cabecalho_de_tentativa(chutes,erros,mascara)
  pula_linha 4
  desenha_forca erros
  puts "Palavra secreta: #{mascara}"
  puts "Erros até agora #{erros}"
  puts "chutes até agora #{chutes}"
end

def pede_um_chute
  puts "Entre com uma letra ou uma palavra"
  chute = gets.strip.downcase
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
  avisa_acertou_palavra
end

def avisa_errou
  puts "Que pena ... errou"
end

def avisa_total_pontos(pontos_ate_agora)
  puts "Você ganhou #{pontos_ate_agora} pontos."
end

def avisa_escolhendo_palavra
  puts "Escolhendo uma palavra secreta..."
end

def avisa_palavra_escolhida palavra_secreta
  puts "palavra secreta com #{palavra_secreta.size} letras... boa sorte"
end

def avisa_pontos_totais(pontos_totais)
  puts "Você possui #{pontos_totais} pontos."
end

def avisa_campeao_atual(dados)
  puts "Nosso campeão atual é #{dados[0]} com #{dados[1]}"
end
