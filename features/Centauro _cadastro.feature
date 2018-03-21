#language: pt
#utf-8

Funcionalidade: Cadastrar um usuário 
Eu como usuário de internet
Quero entrar no site da Centauro 
Para fazer um cadastro de um novo usuário

@cadastro
Cenario: Fazer um novo cadastro
Dado que esteja na pagina inicial da Centauro
Quando clicar para fazer novo cadastro
Então um usuário é cadastrado


