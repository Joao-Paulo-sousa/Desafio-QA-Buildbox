Before do
    @home = HomePage.new
    @validation = ValidationPage.new
    @register = RegisterPage.new

    page.current_window.resize_to(1440, 900)
end

#After do
    #temp_shot = page.save_screenshot("log/temp_shot.png")
    #screenshot = Base64.encode64(File.open(temp_shot, "rb").read)
    #embed(screenshot, "image/png", "Screenshot")
#end
