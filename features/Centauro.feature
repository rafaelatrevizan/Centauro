#language: pt
#utf-8

Funcionalidade: Entrar no site Centauro
Eu como usuário de internet
Quero entrar no site da Centauro 
Para fazer um cadastro

Contexto: Usuário acessa a Home do site
Dado que esteja na pagina inicial da Centauro
@cadastro
Cenario: Entrar na home
Quando clicar para fazer novo cadastro
Então faço um novo cadastro
@carrinho
Cenario: Adicionar um produto no Carrinho
Quando escolher um produto
Então deverá ser exibido no carrinho de compras
