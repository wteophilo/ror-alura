require_relative "produto"
require_relative "impresso"

class Revista < Produto
    attr_reader :numero

    include Impresso
    
    def initialize(titulo,preco,ano_publicacao,possui_reimpressao,editora,numero)
       super(titulo,preco,ano_publicacao,editora)
        @possui_reimpressao = possui_reimpressao
        @numero = numero
    end 
    
    
    def matches?(query)
        ["revista","impresso"].include?(query)
    end
    
end