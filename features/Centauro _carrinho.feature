#language: pt
#utf-8

Funcionalidade: Adicionar um produto carrinho 
Eu como usuário de internet
Quero entrar no site da Centauro 
Para adicionar um produto no carrinho

@carrinho
Cenario: Adicionar um produto no Carrinho
Dado que esteja na pagina inicial da Centauro
Quando adicionar um produto
Então deverá ser exibido no carrinho de compras