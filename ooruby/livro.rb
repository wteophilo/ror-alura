class Livro
    attr_reader :titulo,:ano_publicacao, :preco,:possui_reimpressao
    
    def initialize(titulo,preco,ano_publicacao,possui_reimpressao)
        @titulo = titulo
        @ano_publicacao = ano_publicacao
        @possui_reimpressao = possui_reimpressao
        @preco = calcula_preco(preco)
    end 
    
    def calcula_preco(base)
        if @ano_publicacao <2006
            if @possui_reimpressao
                 base *0.9
            else
                base * 0.95
            end
        elsif @ano_publicacao <= 2010
            base * 0.96
        else
            base
        end
    end
    
    
    def to_csv
        puts "Titulo: #{@titulo},#{@ano_publicacao},#{@preco}" 
    end
end

class Estoque

    def initialize
        @livros = []
    end
    
    def export_csv
        @livros.each do|livro|
           livro.to_csv
        end
    end

    def mais_barato_que(valor)
        @livros.select do |livro|
            livro.preco <= valor
        end
    end

    def total
        @livros.size
    end

    def adiciona(livro)
        @livros<< livro if livro
    end
end

 def livro_para_newsletter(livro)
    if livro.ano_publicacao < 2000
        puts "Titulo: #{livro.titulo} - #{livro.preco}"
    end
end

def imprime_nota(livros)
    livros.each do |livro|
        puts "Titulo: #{livro.titulo} - #{livro.preco}"
    end
end


estoque = Estoque.new
estoque.adiciona(Livro.new("The Pragmatic Programmer", 100, 1999, true))
estoque.adiciona(Livro.new("Programming Ruby", 100, 2004, true))

estoque.export_csv()
