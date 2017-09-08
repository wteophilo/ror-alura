class Heroi
  attr_accessor :linha,:coluna

  def calcula_nova_posicao(direcao)
    #self é opcional: novo_heroi = self.dup
    novo_heroi = dup
    movimentos = {
      "W" => [-1,0],
      "S" => [+1,0],
      "A" => [0,-1],
      "D" => [0,+1]
    }
    movimento = movimentos[direcao]
    novo_heroi.linha += movimento[0]
    novo_heroi.coluna += movimento[1]
    novo_heroi
  end

  def remove_do(mapa)
    mapa [linha][coluna] = " "
  end

  def coloca_no(mapa)
    mapa[linha][coluna] = "H"
  end

  def to_array
    [linha,coluna]
  end

end
