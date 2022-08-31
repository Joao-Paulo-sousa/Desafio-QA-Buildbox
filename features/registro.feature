#language: pt

Funcionalidade: Registro de um novo usuário
    Para que eu possa criar uma conta no buger Eats
    Sendo um usuário interessado em prestar serviços
    Posso criar a conta usando meus dados reais e válidos

    @novo_usuario
    Cenario: Registro com sucesso
        Quando visitar a pagina home
        E clicar no botão Cadastre-se para fazer entregas
        E preencher os campos obrigatórios com dados válidos
        E selecionar a opção Moto
        E fazer o upload da foto da CNH
        E clicar no botão para enviar o formulário
        Então é apresentado a mensagem de dados enviados "Aí Sim..."
