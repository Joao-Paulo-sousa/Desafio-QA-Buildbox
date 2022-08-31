Quando('visitar a pagina home') do                                         
    @home.go
end                                                                          
                                                                               
Então('é apresentado o título {string}') do |title|                              
    expect(@home.title).to eql title
end    

Quando('clicar no botão Cadastre-se para fazer entregas') do
    @home.next_page
end
  
Então('é apresentado a frase {string}') do |go_home|
   expect(@home.back_home_ok).to eql go_home
end

