module Produto
    attr_reader :titulo,:ano_publicacao, :preco,:possui_reimpressao,:editora
         
    def possui_reimpressao?
        @possui_reimpressao
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