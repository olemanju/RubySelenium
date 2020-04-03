require 'selenium-webdriver'
require 'watir'

Selenium::WebDriver::Chrome::Service.driver_path="D:/Softwares/Drivers/Chrome/79/chromedriver_win32/chromedriver.exe"

@browser= Watir::Browser.new  :chrome

#Implicit wait
#@browser.timeouts.implicit_wait = 30

#Maximize the window
@browser.window.maximize()

@browser.goto "https://demoqa.com/keyboard-events/"

updr = @browser.input(id:'browseFile',title:'Click here to browse')




@browser.button(id:'uploadButton').click
sleep 4

puts @browser.alert.present?
puts @browser.alert.text
@browser.alert.ok
sleep 4