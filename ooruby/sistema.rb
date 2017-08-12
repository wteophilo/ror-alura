require_relative "livro"
require_relative "contador"
require_relative "estoque"
require_relative "conversor"

algoritmo = Livro.new("The Pragmatic Programmer", 100, 1999, true,"","livro")
ruby = Livro.new("Programming Ruby", 100, 2004, true,"","livro")
arquitetura = Livro.new("Introdução a Arquitetura e Design de Software",70,2011,true,"","livro")
revistona = Livro.new("Revista de rRuby",10,2012,true,"","revista")

estoque = Estoque.new
estoque << algoritmo << ruby << arquitetura << revistona

estoque.vende ruby
estoque.vende algoritmo
estoque.vende algoritmo
estoque.vende ruby
estoque.vende arquitetura
estoque.vende revistona
puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo