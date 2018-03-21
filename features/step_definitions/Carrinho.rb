Quando("adicionar um produto") do
    $fazerCompra = ComprasPage.new
    $fazerCompra.adicionarCompra
    $fazerCompra.colocarPosicao(1)
end
  
  Então("deverá ser exibido no carrinho de compras") do
    $fazerCompra.adcCarrinho.click
    $fazerCompra.carrinho.click
    $fazerCompra.produtoAdc

  end