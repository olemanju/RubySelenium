require 'selenium-webdriver'
require 'watir'

Selenium::WebDriver::Chrome::Service.driver_path="D:/Softwares/Drivers/Chrome/79/chromedriver_win32/chromedriver.exe"

@browser= Watir::Browser.new  :chrome

#Implicit wait
#@browser.timeouts.implicit_wait = 30

#Maximize the window
@browser.window.maximize()

@browser.goto "https://demoqa.com/iframe-practice-page/"

txt_1= @browser.h1(xpath:'//div[@class="demo-frame"]/h1')

puts txt_1.text

frmes=@browser.iframe(name:'iframe1', id:'IF1')

skip=@browser.frmes.a(class:'skip-link screen-reader-text', text:'Skip to content')

puts
