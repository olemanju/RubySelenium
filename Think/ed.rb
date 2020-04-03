require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path="D:/Softwares/Drivers/Chrome/79/chromedriver_win32/chromedriver.exe"
#Selenium::WebDriver::Chrome::Service.driver_path = "C:/Ruby26/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = 10
driver.navigate.to("https://www.google.com/")
$ab = driver.find_element(name: 'q').displayed?

puts $ab

driver.find_element(name: 'q').send_keys 'raja'