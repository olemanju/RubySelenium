require 'watir'
require 'selenium-webdriver'
#require "selenium-webdriver"
#require "watir-webdriver/wait"


@browser=$browser

Selenium::WebDriver::Chrome::Service.driver_path="D:/Softwares/Drivers/Chrome/79/chromedriver_win32/chromedriver.exe"
@browser= Watir::Browser.new  :chrome

#Implicit wait
@browser.driver.manage.timeouts.implicit_wait = 10

#Maximize the window
@browser.window.maximize

# Go to the URL
@browser.goto "https://demoqa.com/tooltip/"

cont=@browser.p(xpath:'(//p)[1]').text_content

if cont.include?"Tooltips are also useful for form elements"
  puts "Both are same"
end

yourage= @browser.text_field(title:/We ask for your age only for statistical purposes./)

if yourage.wait_until_present(30)
  puts "Present"
end

if yourage.wait_until(timeout: 60, &:present?)
  puts "Present another "
end



if  yourage.title.include?"We ask for your age only for statistical purposes."
  puts "The Tooltip is matching #{yourage.title}"
else
  puts "#{yourage.title}"
end

yourage.hover



sleep(6)

