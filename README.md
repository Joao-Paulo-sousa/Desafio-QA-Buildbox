# Desafio-QA-Buildbox
Automatização dos Cenários de Teste usando Rspec, Capybara, cucumber.e page object pattern.
Os cenários estão com saída de relatório organizada atavés de um arquivo HTML que subscreve a cada execução.


## Installation

*Segue abaixo os passos para instalação*

*1. Instalando Ruby 64 Bits*
* a) Fazer download da versão 2.7.2 x64 http://rubyinstaller.org/downloads/
* b) Instalar no diretório C:\Ruby24-x64
* c) Antes de clicar em Install marcar todas as opções.
* c) Feche o console, e abra novamente, em seguida, digite o comando ruby –v, se der tudo certo você vai ver o seguinte resultado:

 ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x64-mingw32]


*2. Instalando Bundler, RSpec e Cucumber e Capybara*
* Bundler: gem install bundler
* RSpec: gem install rspec
* Cucumber: gem install cucumber
* Capybara: gem install capybara


*3. Instalando as dependências do projeto através do Bundler*

Dentro da pasta raiz do projeto executar o comando bundler install. 
Ao executar o comando todas as dependências devem ser instaladas. Para checar que todas foram instaladas verificar se o log bate com as dependências especificadas no arquivo Gemfile.
Caso não tenha sido instalado alguma dependência por algum motivo, é necessário realizar a instalação manualmente, caso o comando bundler install ainda não funcione. Para tal, verificar qual dependência faltou e executar o comando gem install <nome_da_dependencia>.


*4. Adicionando o chrome driver no lugar certo*
 * Realizar o download do chrome driver para windows. https://chromedriver.storage.googleapis.com/index.html?path=104.0.5112.79/
 * Extrair o arquivo chromedriver.exe para um diretório path C:\Windows

## Running

*Executando o projeto*
*No terminal*
exemplo: cucumber -t @novo_usuario
ou
digite apenas "cucumber" no terminal 

(-t @buscar_por_termo_valido)

os titulos para o termo @ estão dentro do diretório Desafio-QA\features
