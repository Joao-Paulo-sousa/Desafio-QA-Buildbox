class ValidationPage
    include Capybara::DSL 

    def set_email(email)
        find("input[name=email]").set email
    end 


    def set_cpf(cpf)
        find("input[name=cpf]").set cpf
    end
    
    def set_whats(whats)
        find("input[name=whatsapp]").set whats
    end

    def set_cep(cep)
        find("input[name=postalcode]").set cep
        click_on 'Buscar CEP' 
    end



    def valida_message_email
        click_button "Cadastre-se para fazer entregas"
        find('span', :text => 'Oops! Email com formato inválido.').text
    end
    
    def valida_message_cpf
        click_button "Cadastre-se para fazer entregas"
        find('span', :text => 'Oops! CPF inválido').text
    end
    
    def valida_message_whats
        click_button "Cadastre-se para fazer entregas"

        find('span', :text => 'Oops! Whatsapp com formato incorreto').text
    end

    def valida_message_cep
        click_button "Cadastre-se para fazer entregas"
        find('span', :text => 'Informe um CEP válido').text
    end

end