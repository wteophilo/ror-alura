require_relative 'livro'
require_relative 'revista'
require_relative 'ebook'
require_relative 'estoque'
require_relative "contador"
require_relative "estoque"
require_relative "conversor"

algoritmo = Livro.new("The Pragmatic Programmer", 100, 1999, true,"",true)
ruby = Livro.new("Programming Ruby", 100, 2004, true,"",true)
arquitetura = Livro.new("Introdução a Arquitetura e Design de Software",70,2011,true,"",true)
revistona = Revista.new("Revista de Ruby",10,2012,true,"",1)

ebook_arquitetura = EBook.new("Introdução a Arquitetura e Design de Software",70,2011,true,"")

estoque = Estoque.new
estoque << algoritmo << ruby << arquitetura << revistona << ebook_arquitetura

estoque.vende ruby
estoque.vende algoritmo
estoque.vende algoritmo
estoque.vende ruby
estoque.vende arquitetura
estoque.vende revistona
estoque.vende ebook_arquitetura 

puts estoque.respond_to?(:ebook_que_mais_vendeu_por_titulo)

puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo
puts estoque.ebook_que_mais_vendeu_por_titulo.titulo