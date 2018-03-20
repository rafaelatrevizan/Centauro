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


Quando("escolher um produto") do
    $fazerCompra = ComprasPage.new
    $fazerCompra.adicionarCompra
    $fazerCompra.colocarPosicao(1)
end
  
  Então("deverá ser exibido no carrinho de compras") do
    $fazerCompra.adcCarrinho.click
    $fazerCompra.carrinho.click
    $fazerCompra.produtoAdc

  end