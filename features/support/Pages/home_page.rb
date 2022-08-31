class HomePage
    include Capybara::DSL 

    def go #Método responsável por acessar a URL
        visit "/"   
    end

    def title
        find("#page-home > div > main > h1").text
    end

    def next_page
        find("#page-home > div > main > a").click
    end

    def back_home_ok
        find("#page-deliver > header > a").text
    end

end

    
