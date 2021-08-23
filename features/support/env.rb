require 'capybara/cucumber'
require 'cucumber'
require 'pry'
require 'site_prism'
require 'selenium-webdriver'
require 'webdrivers'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://bit.ly/3jOMrR9'
  config.default_max_wait_time = 5
end