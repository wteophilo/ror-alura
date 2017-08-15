require_relative "produto"
require_relative "impresso"

class EBook < Produto
    
    include Impresso
    
    def initialize(titulo,preco,ano_publicacao,possui_reimpressao,editora)
        super(titulo,preco,ano_publicacao,editora)
        @possui_reimpressao = possui_reimpressao
    
    end 
    
    def matches?(query)
        ["ebook","digital"].include?(query)
    end
    
end