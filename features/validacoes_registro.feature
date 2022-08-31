#language: pt

Funcionalidade: Validações obrigatória para registro de um novo usuário
    Para que seja possivel criar uma conta no buger Eats
    Sendo um usuário tester
    Posso validar os campos usando dados ficticios

    @validacao_geral
    Cenario: Verifica todas mensagens de validação
        Quando visitar a pagina home
        E clicar no botão Cadastre-se para fazer entregas
        E clicar no botão para submeter o formulário
        Então é apresentado as mensagens de validação dos campos obrigatórios nome, CPF, email, CEP, Número, método, CNH

    @validacao_email
    Cenario: Verifica mensagem de Email Inválido
        Quando visitar a pagina home
        E clicar no botão Cadastre-se para fazer entregas
        E preencher o campo e-mail com "teste@teste"
        Então é apresentado a mensagem de formato inválido "Oops! Email com formato inválido."

    @validacao_cpf
    Cenario: Verifica mensagem de CPF Inválido
        Quando visitar a pagina home
        E clicar no botão Cadastre-se para fazer entregas
        E preencher o campo cpf com "344.937.488-00"
        Então é apresentado a mensagem de cpf incorreto "Oops! CPF inválido"

    @validacao_whatsapp
    Cenario: Verifica mensagem de whatsapp incorreto
        Quando visitar a pagina home
        E clicar no botão Cadastre-se para fazer entregas
        E preencher o campo whatsapp com "984832031"
        Então é apresentado a mensagem de whatsapp incorreto "Oops! Whatsapp com formato incorreto"
    
    @validacao_cep
    Cenario: Verifica mensagem de cep inválido
        Quando visitar a pagina home
        E clicar no botão Cadastre-se para fazer entregas
        E preencher o campo cep com "0677"
        Então é apresentado a mensagem de cep inválido "Informe um CEP válido"

    
    

    

        
