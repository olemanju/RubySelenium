require 'watir'
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
@browser.goto "https://demoqa.com/controlgroup/"


drd= @browser.span(id:'ui-id-8-button',role:'combobox',class:'ui-selectmenu-button ui-button ui-widget ui-controlgroup-item ui-selectmenu-button-closed ui-corner-top')
drd.present?
drd.click
sleep(1)
drplist= @browser.div(class:'ui-menu-item-wrapper',role:'option',id:'ui-id-11')
puts drplist.present?
drplist.click
sleep 2
puts "Hello"
radio_select= @browser.labels(for:/transmission/, class:/ui-button ui-widget ui-checkboxradio-radio-label ui-checkboxradio-label/)

puts radio_select.size

sleep 4

