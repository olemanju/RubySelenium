require 'watir'

Selenium::WebDriver::Chrome::Service.driver_path="D:/Softwares/Drivers/Chrome/79/chromedriver_win32/chromedriver.exe"
@browser = Watir::Browser.new :chrome

#$browser= Watir::Browser.new  :chrome

#Implicit wait
#@browser.timeouts.implicit_wait = 30

#Maximize the window
@browser.window.maximize

@browser.goto "https://demoqa.com/automation-practice-form/"

#@browser.scroll.to :bottom
@browser.scroll.by 0, 600

sleep 5

download= @browser.a(xpath:"//a[contains(text(),'Test File to Download')]")

puts "File Downloaded"
download.click

sleep 5






