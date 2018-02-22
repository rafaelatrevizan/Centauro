
class CadastroPage < SitePrism::Page
    element :entrar, :xpath, '//a[contains(@href, "/slogin")]'
    element :fraseCadastro, :xpath, '//h1[contains(text(), "Você já possui cadastro")]'
    element :radioButtonNovoCadastro, :xpath, '//input[@name = "Cadastro"]'

    def doLogin 
        $URL = "https://www.centauro.com.br/"
        visit $URL
    end

    def Cadastrar
    binding.pry
    entrar.houver
    assert_text(#fraseCadastro)
    end
 

end