require_relative 'produto'
class Livro
    attr_reader :possui_sobrecapa
    
    include Produto
    
    def initialize(titulo,preco,ano_publicacao,possui_reimpressao,editora,possui_sobrecapa)
        @titulo = titulo
        @ano_publicacao = ano_publicacao
        @possui_reimpressao = possui_reimpressao
        @editora = editora
        @possui_sobrecapa = possui_sobrecapa
        @preco = calcula_preco(preco)
    end 
    
    
    def matches?(query)
        ["livro","impresso"].include?(query)
    end
    

end