class Produto
    attr_reader :titulo,:ano_publicacao, :preco,:possui_reimpressao,:editora
    
     def initialize(titulo,preco,ano_publicacao,editora)
        @titulo = titulo
        @ano_publicacao = ano_publicacao
        @editora = editora
        @preco = calcula_preco(preco)
    end 
         
  
    def to_csv
        puts "Titulo: #{@titulo},#{@ano_publicacao},#{@preco}" 
    end
    
    private
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
    
end