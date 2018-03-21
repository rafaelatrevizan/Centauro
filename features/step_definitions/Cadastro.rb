Quando("clicar para fazer novo cadastro") do
   $loginCentauro.Cadastrar
end

Então("um usuário é cadastrado") do
    $loginCentauro.preenchimentoUm
    $loginCentauro.preenchimentoDois
    $loginCentauro.cadastroFeito
end


