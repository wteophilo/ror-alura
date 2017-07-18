class Produto < ApplicationRecord
    validates :quantidade,presence: true
    validates :preco,presence: true
    validates :nome, length: {minimum: 5}
end
