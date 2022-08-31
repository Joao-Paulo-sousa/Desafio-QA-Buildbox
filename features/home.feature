#language: pt

Funcionalidade: Home
    Ao acessar a pagina home do Buger Eats
    Sendo previamente um usuário interessado no serviço
    Posso seguir com o registro clicando em Cadastre-se para fazer entregas

    @acesso_ao_site
    Cenario: Acesso a pagina home
        Quando visitar a pagina home
        Então é apresentado o título "Seja um parceiro entregador pela Buger Eats"

    @cadastro
    Cenario: Quero me cadastrar
        Quando visitar a pagina home
        E clicar no botão Cadastre-se para fazer entregas
        Então é apresentado a frase "Voltar para home"