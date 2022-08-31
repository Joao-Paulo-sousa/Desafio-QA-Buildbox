#validacao_geral
Quando('clicar no botão para submeter o formulário') do
    click_button "Cadastre-se para fazer entregas"
end
  
Então('é apresentado as mensagens de validação dos campos obrigatórios nome, CPF, email, CEP, Número, método, CNH') do
    expect(page).to have_content('É necessário informar o nome')
    expect(page).to have_content('É necessário informar o CPF')
    expect(page).to have_content('É necessário informar o email')
    expect(page).to have_content('É necessário informar o CEP')
    expect(page).to have_content('É necessário informar o número do endereço')
    expect(page).to have_content('Selecione o método de entrega')
    expect(page).to have_content('Adicione uma foto da sua CNH')
end

#validacao_email
Quando('preencher o campo e-mail com {string}') do |email_error|                   
    @validation.set_email(email_error)
end                                                                          
                                                                               
Então('é apresentado a mensagem de formato inválido {string}') do |message_email|
    expect(@validation.valida_message_email).to eql message_email
end

#validacao_cpf  
Quando('preencher o campo cpf com {string}') do |cpf_error|                   
    @validation.set_cpf(cpf_error)
end          

Então('é apresentado a mensagem de cpf incorreto {string}') do |message_cpf|
    expect(@validation.valida_message_cpf).to eql message_cpf
end    

#validacao_whatsapp
Quando('preencher o campo whatsapp com {string}') do |whats_error|
    @validation.set_whats(whats_error)
end
  
Então('é apresentado a mensagem de whatsapp incorreto {string}') do |message_whats|
    expect(@validation.valida_message_whats).to eql message_whats
end

#validacao_cep
Quando('preencher o campo cep com {string}') do |cep_error|                      
    @validation.set_cep(cep_error)
end                                                                          
                                                                               
Então('é apresentado a mensagem de cep inválido {string}') do |message_cep|            
    expect(@validation.valida_message_cep).to eql message_cep
end                                                                          

