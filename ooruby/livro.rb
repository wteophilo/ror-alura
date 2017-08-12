class Livro
    attr_reader :titulo,:ano_publicacao, :preco,:possui_reimpressao,:editora,:tipo
    
    def initialize(titulo,preco,ano_publicacao,possui_reimpressao,editora,tipo)
        @titulo = titulo
        @ano_publicacao = ano_publicacao
        @possui_reimpressao = possui_reimpressao
        @editora = editora
        @tipo = tipo
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
    
    def possui_reimpressao?
        @possui_reimpressao
    end
        
    def to_csv
        puts "Titulo: #{@titulo},#{@ano_publicacao},#{@preco}" 
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
end