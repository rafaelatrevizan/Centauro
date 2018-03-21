Dado("que esteja na pagina inicial da Centauro") do
    $loginCentauro = CadastroPage.new     
    $loginCentauro.doLogin   
    assert_text('Centauro')
end