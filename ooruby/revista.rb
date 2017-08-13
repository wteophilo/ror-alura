require_relative "produto"
class Revista
    attr_reader :numero
    
    include Produto
    
    
    def initialize(titulo,preco,ano_publicacao,possui_reimpressao,editora,numero)
        @titulo = titulo
        @ano_publicacao = ano_publicacao
        @possui_reimpressao = possui_reimpressao
        @editora = editora
        @numero = numero
        @preco = calcula_preco(preco)
    end 
    
    
    def matches?(query)
        ["revista","impresso"].include?(query)
    end
    
end