class ComprasPage < SitePrism::Page

element :menuAcessorios, :xpath, '//a[contains(@title, "Acessórios")]'
element :mochila, :xpath, '//li[contains(text(), "Mochilas, malas e bolsas")]'
# elements :mochilaNike, :xpath, '//li[@class = "sli_grid_container "]'
elements :mochilaNike, :xpath, '//img[@class = "thumb"]'
element :adcCarrinho, :xpath, '//button[contains(@class, "form-submitRed large buy available")]'
# element :sucesso, :xpath, '//button[contains(@class, "btn-add-cart selected")]'
element :carrinho, :xpath, '//div[@class = "cart"][1]'
# elements :sucesso, :xpath, '//button[contains(@type, "submit")]'

def adicionarCompra
    menuAcessorios.click
    mochila.click
end

def colocarPosicao(posicao)
   mochilaNike[posicao].click
end

# def adicionarCarrinho(compra)
#     adcCarrinho[compra].click
# end

def produtoAdc
    assert_text ('CONCLUIR PEDIDO')
end

end