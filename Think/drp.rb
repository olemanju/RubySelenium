require 'watir-webdriver'
require 'selenium-webdriver'
require 'selenium/webdriver/common/action_builder'

@browser=$browser

Selenium::WebDriver::Chrome::Service.driver_path="D:/Softwares/Drivers/Chrome/79/chromedriver_win32/chromedriver.exe"
@browser= Watir::Browser.new  :chrome

#Implicit wait
@browser.driver.manage.timeouts.implicit_wait = 10

#Maximize the window
@browser.window.maximize

# Go to the URL
@browser.goto "http://demo.guru99.com/test/newtours/register.php"

@browser.scroll.to :center

drpd= @browser.select(name:'country')

puts drpd.options.size

drpd.options.each do |opd|
  if opd.text == "BURMA"
    opd.click
    break
  end
end

=begin
drpd.click
sleep(3)
drpd.select "AUSTRALIA"
=end
sleep(5)
