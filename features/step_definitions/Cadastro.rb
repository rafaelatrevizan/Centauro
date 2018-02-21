Dado("que esteja na pagina inicial da Centauro") do
    $loginCentauro = CadastroPage.new     
    $loginCentauro.doLogin   
    assert_text('Centauro')
end

Quando("clicar para fazer novo cadastro") do
   $loginCentauro.mouseOverMenu
end

Então("apresentará tela para validar se sou novo usuário") do
    $loginCentauro.cadastrar
end