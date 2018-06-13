require "capybara/rails"
require "selenium-webdriver"

# ...

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: { "chromeOptions" => { "args" => %w[window-size=1024,768] } },
  )
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.default_max_wait_time = 10
  config.default_driver        = :selenium
end

Capybara.app_host = "http://localhost:3000"
Capybara.javascript_driver = :chrome
Capybara.server_port = 5001 # We don't want it to collide with standard rails server on port 5000
Capybara.server_host = "0.0.0.0" # Start server on localhost as meta-address
Capybara.server = :puma, { Silent: true } # Supress puma STDOUT in console

# ...
