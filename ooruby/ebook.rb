require_relative "produto"

class EBook
    
    include Produto
    def initialize(titulo,preco,ano_publicacao,possui_reimpressao,editora)
        @titulo = titulo
        @ano_publicacao = ano_publicacao
        @possui_reimpressao = possui_reimpressao
        @editora = editora
        @preco = calcula_preco(preco)
    end 
    
    def matches?(query)
        ["ebook","digital"].include?(query)
    end
    
end