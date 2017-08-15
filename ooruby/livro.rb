require_relative 'produto'
require_relative "impresso"

class Livro < Produto
    attr_reader :possui_sobrecapa
    
    include Impresso
    
    def initialize(titulo,preco,ano_publicacao,possui_reimpressao,editora,possui_sobrecapa)
        super(titulo,preco,ano_publicacao,editora)
        @possui_reimpressao = possui_reimpressao
        @possui_sobrecapa = possui_sobrecapa
    end 
    
    
    def matches?(query)
        ["livro","impresso"].include?(query)
    end
    

end