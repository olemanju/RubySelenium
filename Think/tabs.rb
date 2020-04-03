require 'selenium-webdriver'
require 'watir'

Selenium::WebDriver::Chrome::Service.driver_path="D:/Softwares/Drivers/Chrome/79/chromedriver_win32/chromedriver.exe"

@browser= Watir::Browser.new  :chrome

#Implicit wait
#@browser.timeouts.implicit_wait = 30

#Maximize the window
@browser.window.maximize()

@browser.goto "https://demoqa.com/tabs/"

puts @browser.h1(class:'entry-title').text

tab1=@browser.li(tabindex:'0')
tab1.click
sleep 4

text_con= @browser.div(id:'tabs-1',class:'ui-tabs-panel ui-corner-bottom ui-widget-content')
puts text_con.p.text

tab2=@browser.li(tabindex:'-1')
tab2.click
sleep 4

text_con1= @browser.div(id:'tabs-2',class:'ui-tabs-panel ui-corner-bottom ui-widget-content')
puts text_con1.p.text
sleep 4

tab3=@browser.li(xpath:'//div[@id="tabs"]/ul/li[3]')
tab3.click
sleep 4

text_con2= @browser.div(id:'tabs-3',class:'ui-tabs-panel ui-corner-bottom ui-widget-content')
puts text_con2.p.text
sleep 4

tab1=@browser.li(xpath:'//div[@id="tabs"]/ul/li[1]')
tab1.click
sleep 4

text_con= @browser.div(id:'tabs-1',class:'ui-tabs-panel ui-corner-bottom ui-widget-content')
sam_text= text_con.p.text

puts sam_text[0,10]




