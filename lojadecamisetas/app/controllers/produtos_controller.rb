class ProdutosController < ApplicationController
    def index
        @produtos_preco = Produto.order(:preco).limit 3
        @produtos_nome = Produto.order(:nome).limit 2 
    end
    
    def create
        valores = params.require(:produto).permit :nome,:preco,:quantidade,:descricao
        produto = Produto.create valores
        redirect_to root_url
    end
    
    def destroy
        id = params[:id]
        Produto.destroy id
        redirect_to root_url
    end
end
