require_relative "ui"
require_relative 'heroi'

def le_arquivo(numero)
  arquivo = "mapa#{numero}.txt"
  texto = File.read arquivo
  mapa = texto.split "\n"
end

def encontra_jogador(mapa)
  caracter_do_heroi = "H"
  #for linha in 0..(mapa.size-1)
  mapa.each_with_index do |linha_atual,linha|
    coluna_do_heroi = linha_atual.index caracter_do_heroi
    if  coluna_do_heroi
        jogador = Heroi.new
        jogador.linha = linha
        jogador.coluna = coluna_do_heroi
      return jogador
    end
  end
  nil
end



def posicao_valida?(mapa,posicao)
  linhas = mapa.size
  colunas= mapa[0].size
  estourou_linhas = posicao[0] < 0 || posicao[0] >=linhas
  estourou_colunas = posicao[1]<0 || posicao[1] >=colunas

  if estourou_linhas || estourou_colunas
    return false
  end

  valor_atual = mapa[posicao[0]][posicao[1]]
  if valor_atual == "X" || valor_atual == "F"
   return false
  end
  true
end

def soma_vetor(vetor1,vetor2)
  [vetor1[0] + vetor2[0],vetor1[1]+vetor2[1]]
end

def posicoes_validas_a_partir_de (mapa,novo_mapa,posicao)
  posicoes = []
  movimentos = [[1,0],[0,1],[-1,0],[0,-1]]
  movimentos.each do |movimento|
    nova_posicao = soma_vetor(movimento,posicao)
    if posicao_valida?(mapa,nova_posicao) && posicao_valida?(novo_mapa,nova_posicao)
      posicoes << nova_posicao
    end
  end
  posicoes
end

def copia_mapa(mapa)
  #agrupa array de String em uma única string removendo os fantastamas e agrupa novamente
  novo_mapa = mapa.join("\n").tr("F"," ").split "\n"

end

def move_fantasma(mapa,novo_mapa,linha,coluna)
  posicoes = posicoes_validas_a_partir_de mapa,novo_mapa,[linha,coluna]
  return  if posicoes.empty?
  aleatorio = rand posicoes.size
  posicao = posicoes[aleatorio]
  mapa[linha][coluna] = " "
  novo_mapa[posicao[0]][posicao[1]] = "F"
end

def move_fantasmas(mapa)
  caractere_do_fantasma = "F"
  novo_mapa = copia_mapa mapa
  mapa.each_with_index do |linha_atual,linha|
    linha_atual.chars.each_with_index do |caractere_atual,coluna|
      eh_fantasma = caractere_atual  == caractere_do_fantasma
      if eh_fantasma
        move_fantasma mapa,novo_mapa,linha,coluna
      end
    end
  end
  novo_mapa
end

def jogador_perdeu?(mapa)
  !encontra_jogador mapa
end

def direcao_valida?(direcao)
  direcoes = ["W","A","S","D"]
  direcoes.include? direcao
end

def joga(nome)
  mapa = le_arquivo 2
  caractere_do_heroi = "H"
  while true
    desenha_mapa mapa
    direcao = pede_movimento
    if !direcao_valida?(direcao)
      direcao_invalida
      next
    end
    heroi = encontra_jogador mapa
    nova_posicao = heroi.calcula_nova_posicao direcao
    if !posicao_valida? mapa,nova_posicao.to_array
      next
    end
    heroi.remove_do mapa
    nova_posicao.coloca_no mapa

    mapa = move_fantasmas mapa

    if jogador_perdeu? mapa
      game_over
      break
    end
  end
end

def inicia_fogefoge
  nome = da_boas_vindas
  joga nome
end
