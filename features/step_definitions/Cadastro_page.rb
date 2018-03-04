
class CadastroPage < SitePrism::Page
    element :entrar, :xpath, '//a[contains(@href, "/slogin")]'
    element :radioButtonNovoCadastro, :xpath, "//input[@id = 'optNoclient']"
    element :cep, :xpath, '//input[@name = "Cep"]'
    element :email, :xpath, '//input[@name = "email"]'
    element :btnCadastrar, :xpath, '//input[@id = "btn_cadastrar"]'
    element :nome, :xpath, '//input[@id ="fisica-nome"]'
    element :sobreNome, :xpath, '//input[@id ="fisica-sobrenome"]'
    element :rg, :xpath, '//input[@id ="fisica-rg"]'
    element :sexo, :xpath, '//select[@name ="sexo"]/option[3]'
    element :data, :xpath, '//input[@id ="date-nregister"]'
    element :ddd, :xpath, '//input[@id ="fisica-telefone-fixo-ddd"]'
    element :numero, :xpath, '//input[@id ="fisica-telefone-fixo"]'
    element :em

    def doLogin 
        $URL = "https://www.centauro.com.br/"
        visit $URL
    end

    def Cadastrar
    entrar.click
    assert_text("Você já possui cadastro")
    end

    def preenchimentoUm
        radioButtonNovoCadastro.click
        email.set('06311931540')
        cep.set('03157201')
        btnCadastrar.click
    end
 
    def preenchimentoDois
        find('#tab1-nregister')
        nome.set('Julia')
        sobreNome.set('Souza')
        rg.set('403888736')
        data.set('18091992')
        sexo.click
        ddd.set('11')
        numero.set('99999999')
    end

end