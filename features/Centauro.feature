#language: pt
#utf-8

Funcionalidade: Cadastrar um usuário e adicionar produto no carrinho
Eu como usuário de internet
Quero entrar no site da Centauro 
Para fazer um cadastro e adicionar um produto no carrinho

Contexto: Usuário acessa a Home do site
Dado que esteja na pagina inicial da Centauro

@cadastro
Cenario: Fazer um novo cadastro
Quando clicar para fazer novo cadastro
Então um usuário é cadastrado

@carrinho
Cenario: Adicionar um produto no Carrinho
Quando adicionar um produto
Então deverá ser exibido no carrinho de compras
