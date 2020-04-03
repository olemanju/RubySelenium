require 'watir'
require 'watir-webdriver'
require 'selenium-webdriver'
require 'selenium/webdriver/common/action_builder'
require 'bundler/vendor/thor/lib/thor/actions'

@browser=$browser

Selenium::WebDriver::Chrome::Service.driver_path="D:/Softwares/Drivers/Chrome/79/chromedriver_win32/chromedriver.exe"
@browser= Watir::Browser.new  :chrome

#Implicit wait
@browser.driver.manage.timeouts.implicit_wait = 10

#Maximize the window
@browser.window.maximize

# Go to the URL
@browser.goto "https://demoqa.com/datepicker/"

datepic= @browser.input(id:'datepicker',class:'hasDatepicker')


puts datepic.present?

datepic.send_keys "10/10/2020"


sleep 5

datetext= @browser.h1(class:'entry-title')
puts datetext.text

sleep 5