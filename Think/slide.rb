require 'selenium-webdriver'
require 'watir'

Selenium::WebDriver::Chrome::Service.driver_path="D:/Softwares/Drivers/Chrome/79/chromedriver_win32/chromedriver.exe"

@browser= Selenium::WebDriver.for :chrome


#Implicit wait
#@browser.timeouts.implicit_wait = 30

#Maximize the window
@browser.manage.window.maximize()

@browser.navigate.to "https://demoqa.com/slider/"

slide= @browser.find_element(id:'slider')

@browser.action.move_to(slide).drag_and_drop_by(slide,50,20).perform
sleep 5