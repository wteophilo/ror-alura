def pula_linha(quantidade)
  for linha in 1..quantidade
    puts "\n"
  end
end

def da_boas_vindas
    puts
    puts "        P  /_\  P                              "
    puts "       /_\_|_|_/_\                             "
    puts "   n_n | ||. .|| | n_n         Bem vindo ao    "
    puts "   |_|_|nnnn nnnn|_|_|     Jogo de Adivinhação!"
    puts "  |' '  |  |_|  |'  ' |                        "
    puts "  |_____| ' _ ' |_____|                        "
    puts "        \__|_|__/                              "
    puts
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n\n"
    puts "Começaremos o jogo para você, #{nome}"
    nome
end

def ganhou
    puts
    puts "             OOOOOOOOOOO               "
    puts "         OOOOOOOOOOOOOOOOOOO           "
    puts "      OOOOOO  OOOOOOOOO  OOOOOO        "
    puts "    OOOOOO      OOOOO      OOOOOO      "
    puts "  OOOOOOOO  #   OOOOO  #   OOOOOOOO    "
    puts " OOOOOOOOOO    OOOOOOO    OOOOOOOOOO   "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOO  OOOOOOOOOOOOOOOOOOOOOOOOO  OOOO  "
    puts " OOOO  OOOOOOOOOOOOOOOOOOOOOOO  OOOO   "
    puts "  OOOO   OOOOOOOOOOOOOOOOOOOO  OOOO    "
    puts "    OOOOO   OOOOOOOOOOOOOOO   OOOO     "
    puts "      OOOOOO   OOOOOOOOO   OOOOOO      "
    puts "         OOOOOO         OOOOOO         "
    puts "             OOOOOOOOOOOO              "
    puts
    puts "               Acertou!                "
    puts
end

def pede_dificuldade
  puts "Qual o nível de dificuldade?"
  puts "(1)Muito Fácil (2)Fácil (3)Normal (4)Difícil (5)Impossível"
  puts "Escolha: "
  dificuldade = gets.to_i
end

def sorteia_numero_secreto(dificuldade)
  case dificuldade
    when 1
      maximo = 30
    when 2
      maximo = 60
    when 3
      maximo = 100
    when 4
      maximo = 150
    else
      maximo = 200
  end

  puts "Escolhendo um número secreto entre 1 e #{maximo}..."
  numero_secreto = rand(maximo)
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  pula_linha(4)
  numero_secreto
end

def pede_um_numero(chutes,tentativa,limite_de_tentativas)
  puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
  puts "Chutes até agora #{chutes}"
  puts "Entre com o numero"
  chute = gets.strip
  puts "Será que acertou? Você chutou " + chute
  chute.to_i
end

def verificar_se_acertou(numero_secreto,chute,chutes)
  acertou = numero_secreto == chute
  if acertou
    ganhou
    return true
  end
  puts "Que pena você errou!"
  maior = numero_secreto > chute.to_i
  if maior
    puts "Número secreto é maior"
  else
    puts "Número secreto é menor"
  end
  false
end

def joga (nome,dificuldade)
  numero_secreto = sorteia_numero_secreto dificuldade
  chutes=[]
  limite_de_tentativas = 5
  pontos_ate_agora = 1000
  for tentativa in 1..limite_de_tentativas
    chute = pede_um_numero chutes,tentativa,limite_de_tentativas
    chutes<<chute

    if nome.upcase == "WIL"
        ganhou
        break
    end
    pontos_a_perder = (chute-numero_secreto).abs/2.0
    pontos_ate_agora -= pontos_a_perder

    if verificar_se_acertou numero_secreto,chute,chutes
      break
    end
  end
  puts "Você ganhou #{pontos_ate_agora} pontos."
end

def nao_quero_jogar?
    puts "Deseja jogar novamente? (S/N)"
    continua = gets.strip
    nao_quero_jogar = continua.upcase == "N"
end

nome = da_boas_vindas
dificuldade = pede_dificuldade
loop do
  joga nome,dificuldade
  if nao_quero_jogar?
    break
  end
end
