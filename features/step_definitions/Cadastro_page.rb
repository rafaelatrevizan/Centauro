
class CadastroPage < SitePrism::Page
    element :entrar, :xpath, '//a[contains(@href, "/slogin")]'
    element :cadastro, :xpath, '//li[contains(@class, "entrar-cadastrar")]'

    def doLogin 
        $URL = "https://www.centauro.com.br/"
        visit $URL
    end

    def mouseOverMenu
    el = driver.find_element(:xpath => "//a[contains(@href, "/slogin")] ")
    driver.mouse.move_to(el).perform
    end

    def cadastrar
    cadastro.click
    end
    

end