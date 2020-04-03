
require 'watir'
require 'rubygems'
Selenium::WebDriver::Chrome::Service.driver_path="D:/Softwares/Drivers/Chrome/79/chromedriver_win32/chromedriver.exe"
browser = Watir::Browser.new :chrome
browser.goto "http://www.usf.edu/academics/colleges.aspx"
browser.a(:text,"College of Arts and Sciences").click
browser.driver.switch_to.window(browser.driver.window_handles[1])
browser.a(:text,"Academic Programs").click
puts "Section Header= #{browser.element(:text, "Advertising").when_present.text}"