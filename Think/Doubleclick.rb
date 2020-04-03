require 'watir'
#require 'watirspec'
require 'selenium-webdriver'
require 'selenium/webdriver/common/action_builder'


@browser=$browser

Selenium::WebDriver::Chrome::Service.driver_path="D:/Softwares/Drivers/Chrome/79/chromedriver_win32/chromedriver.exe"
$browser = Selenium::WebDriver.for :chrome
#$browser= Watir::Browser.new  :chrome

#Implicit wait
$browser.manage.timeouts.implicit_wait = 10

#Maximize the window
$browser.manage.window.maximize

# Go to the URL
$browser.navigate.to "https://demoqa.com/tooltip-and-double-click/"


#dubleClick= @browser.button(id:'doubleClickBtn', text:/Hello, Double-click me/)

dubleClick=$browser.find_element(id:'doubleClickBtn', text:/Hello, Double-click me/)



sleep 6

=begin
dubleClick.focus
dubleClick.click
#dubleClick.focus
#dubleClick.double_click
=end
if @browser.alert.exists?
  puts "Alert is present"
end

puts "Text on the alert is #{@browser.alert.text}"

@browser.alert.ok
if dubleClick.present?
  puts "Button is present"
end


toolText= @browser.div(class:/tooltip/)

toolText.wait_until(30)

if toolText.present?
  puts "Present Text"
end

toolText.hover



