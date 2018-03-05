Dado("que esteja na pagina inicial da Centauro") do
    $loginCentauro = CadastroPage.new     
    $loginCentauro.doLogin   
    assert_text('Centauro')
end

Quando("clicar para fazer novo cadastro") do
   $loginCentauro.Cadastrar
end

Então("faço um novo cadastro") do
    $loginCentauro.preenchimentoUm
    $loginCentauro.preenchimentoDois
    $loginCentauro.cadastroFeito
end