
class CadastroPage < SitePrism::Page
    element :entrar, :xpath, '//a[contains(@href, "/slogin")]'
    element :radioButtonNovoCadastro, :xpath, "//input[@id = 'optNoclient']"
    element :cep, :xpath, '//input[@name = "Cep"]'
    element :cpf, :xpath, '//input[@id = "input-type-1"]'
    element :btnCadastrar, :xpath, '//input[@id = "btn_cadastrar"]'
    element :nome, :xpath, '//input[@id ="fisica-nome"]'
    element :sobreNome, :xpath, '//input[@id ="fisica-sobrenome"]'
    element :rg, :xpath, '//input[@id ="fisica-rg"]'
    element :sexo, :xpath, '//select[@name ="sexo"]/option[3]'
    element :data, :xpath, '//input[@id ="date-nregister"]'
    element :ddd, :xpath, '//input[@id ="fisica-telefone-fixo-ddd"]'
    element :numero, :xpath, '//input[@id ="fisica-telefone-fixo"]'
    element :emailCadastro, :xpath, '//input[@id ="fisica-email"]'
    element :senha, :xpath, '//input[@id = "fisica-senha"]'
    element :confirmacaoSenha, :xpath, '//input[@name = "confirmacaoSenha"]'
    element :numeroEnd, :xpath, '//input[@name = "numero"]'
    element :newsLetter, :xpath, '//input[@id = "newsletter-fisica"]'
    element :esporte, :xpath, '//div[@class = "fselect-nregister-esporte"]'
    element :esporteTipo, :xpath, '//input[@value = "Futebol de campo"]'
    element :time, :xpath, '//div[contains(text(), "Time")]'
    element :timeEscolha, :xpath, '//input[@value = "21"]'
    element :cadastrarButton, :xpath, '//button[@id = "bt-submit-fisica"]'
    element :cadastroSucesso, :xpath, '//span[@class = "user"]'

    def doLogin 
        $URL = "https://www.centauro.com.br/"
        visit $URL
    end

    def Cadastrar
    entrar.click
    assert_text("Você já possui cadastro")
    end

    def preenchimentoUm
        cpf.set(Faker::CPF.number) 
        radioButtonNovoCadastro.click
        cep.click  
        # @cepCadastro =  Faker::Address.zip_code
        cep.set('03335070')    
        # cep.set(Faker::Address.zip_code)  
        # puts @cepCadastro    
        btnCadastrar.click  
          
      
    end
 
    def preenchimentoDois  
        
        find('#tab1-nregister')
        @nomeCadastro = Faker::Name.first_name 
        nome.set(@nomeCadastro)
        sobreNome.set(Faker::Name.last_name )
        rg.set('403888736')
        data.set('018101992')
        sexo.click
        ddd.set('11')
        numero.set('43424242')
        emailCadastro.set(Faker::Internet.email)
        senha.set('fake123')
        confirmacaoSenha.set('fake123')
        numeroEnd.set(Faker::Address.building_number)
        newsLetter.click
        esporte.click
        esporteTipo.click
        time.click
        timeEscolha.click
        cadastrarButton.click
    end

    def cadastroFeito
       
        @cadastroSucesso2 = cadastroSucesso.text
        if (@cadastroSucesso2 == @nomeCadastro)
           puts "Cadastro com Sucesso"
        else
            fail
        end
    end
 
  
end