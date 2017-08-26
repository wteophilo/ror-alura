def pula_linha(quantidade)
  for linha in 1..quantidade
    puts "\n"
  end
end

def da_boas_vindas
  puts "Bem vindo ao jogo da adivinhação"
  puts "Qual é o seu nome?"
  nome = gets
  pula_linha(4)
  puts "Começaremos o jogo para você, " + nome
end

def sorteia_numero_secreto
  puts "Escolhendo um número secreto entre 0 e 200..."
  numero_secreto = 175
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  pula_linha(4)
  numero_secreto
end

def pede_um_numero(tentativa,limite_de_tentativas)
  puts "Tentativa "+ tentativa.to_s + " de " +limite_de_tentativas.to_s
  puts "Entre com o numero"
  chute = gets
  puts "Será que acertou? Você chutou " + chute
  chute.to_i
end

def verificar_se_acertou(numero_secreto,chute)
  acertou = numero_secreto == chute
  if acertou
    puts "Acertou!"
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

da_boas_vindas
numero_secreto = sorteia_numero_secreto
limite_de_tentativas = 5
for tentativa in 1..limite_de_tentativas
  chute = pede_um_numero tentativa,limite_de_tentativas
  if verificar_se_acertou numero_secreto,chute
    break
  end
end
