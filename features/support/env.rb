require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://buger-eats.vercel.app/' #(SITE A SER AUTOMATIZADO)
    config.default_max_wait_time = 5
end
