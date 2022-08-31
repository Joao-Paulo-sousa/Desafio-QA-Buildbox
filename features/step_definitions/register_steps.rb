Quando('preencher os campos obrigatórios com dados válidos') do
    @register.set_name
    @register.set_cpf
    @register.set_email
    @register.set_whats
    @register.set_cep
    @register.set_number
    @register.set_complement
end

Quando('selecionar a opção Moto') do
    @register.select
end
  
Quando('fazer o upload da foto da CNH') do
    @register.up_image
end

Quando('clicar no botão para enviar o formulário') do
    click_button "Cadastre-se para fazer entregas"
end
  
Então('é apresentado a mensagem de dados enviados {string}') do |data_send|
    expect(@register.valida_form).to eql data_send
end 
