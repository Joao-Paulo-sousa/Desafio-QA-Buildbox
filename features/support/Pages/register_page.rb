class RegisterPage
    include Capybara::DSL

    def set_name
        fill_in 'name', with: 'João Paulo'
    end

    def set_cpf
        fill_in 'cpf', with: '34493748855'
    end

    def set_email
        fill_in 'email', with: 'silvajoao.15@gmail.com'
    end

    def set_whats
        fill_in 'whatsapp', with: '11984832032'
    end

    def set_cep
        fill_in 'postalcode', with: '06773190'
        click_on 'Buscar CEP'
    end

    def set_number
        fill_in 'address-number', with: '465'
    end

    def set_complement
        fill_in 'address-details', with: 'Casa'
    end

    def select
        find('span', :text => 'Moto').click
    end

    def up_image
        find('#page-deliver > form > div > input[type=file]',visible: false).set("features/support/fixtures/" + "cnh.png")
    end

    def valida_form
        find(".swal2-title").text
    end
end

