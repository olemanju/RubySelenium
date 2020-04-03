require 'watir'
require 'selenium-webdriver'
require 'selenium/webdriver'
require 'rubygems'


@browser=$browser

Selenium::WebDriver::Chrome::Service.driver_path="D:/Softwares/Drivers/Chrome/79/chromedriver_win32/chromedriver.exe"
@browser= Watir::Browser.new  :chrome

#Implicit wait
@browser.driver.manage.timeouts.implicit_wait = 10

#Maximize the window
@browser.window.maximize

# Go to the URL
@browser.goto "https://demoqa.com/keyboard-events-sample-form/"

pageTitle= @browser.title

puts "Page Title is #{pageTitle}"



username=@browser.input(id: 'userName')
#username1=@browser.text_field(id: /userName/)

if username.visible?
  puts "Username is displayed"
  username.send_keys"Manjunatha"
end

#sleep(4)
username1=@browser.text_field(id: /userName/)

if username1.present?
  puts "username1 is displayed"
  username1.clear
  username1.send_keys("Malli")
end

#sleep(4)

Currenttextarea= @browser.textarea(form: 'userform')

if Currenttextarea.visible?
  puts "Text area is displayed"
  Currenttextarea.send_keys"423, waverly road, Mount waverly"
end

parement_textare=@browser.textarea(id: 'permanentAddress')

if parement_textare.visible?
  puts "Text area is displayed"
  #parement_textare.send_keys"100, esponde"
  parement_textare.set "100, esponde"
end
sleep(4)

btnSubmit= @browser.input(id:'submit')

btnSubmit.wait_until(20,"Not displayed")

if btnSubmit.visible?
  puts "Submit button is displayed"
end

#@browser.execute_script("window.scrollBy(0,150)")
#btnSubmit= @browser.input(id:'submit')

@browser.scroll.to :center
#@browser.scroll.by 0,250

#btnSubmit.scroll.to :center

btnSubmit.click




if @browser.alert.exists?
  puts "Alert is present"
end

puts "Text on the alert is #{@browser.alert.text}"

@browser.alert.ok
sleep(6)
@browser.quit()

