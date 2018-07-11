require 'capybara'
require 'capybara/cucumber'
require 'site_prism'

Capybara.configure do |app|
    app.default_driver = :selenium_chrome
end


Capybara.default_max_wait_time = 5