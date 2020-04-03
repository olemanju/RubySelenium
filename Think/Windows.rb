require 'watir'

Selenium::WebDriver::Chrome::Service.driver_path="D:/Softwares/Drivers/Chrome/79/chromedriver_win32/chromedriver.exe"
@browser = Watir::Browser.new :chrome

#$browser= Watir::Browser.new  :chrome

#Implicit wait
#@browser.timeouts.implicit_wait = 30

#Maximize the window
@browser.window.maximize

@browser.goto "https://demoqa.com/automation-practice-switch-windows/"

#@browser.scroll.to :bottom
#@browser.scroll.by 0, 600

sleep 5
puts @browser.driver.switch_to.window(@browser.driver.window_handles[1])
parent= @browser.button(xpath:"//button[contains(text(),'New Message Window')]")

puts parent.text
parent.click
sleep 5
wns=@browser.windows

wns.each do |r|
  puts r.to_s
end

sleep 5








