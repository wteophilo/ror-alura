class ProdutosController < ApplicationController
    def index
        @produtos_preco = Produto.order(:preco).limit 3
        @produtos_nome = Produto.order(:nome).limit 2 
    end
end
