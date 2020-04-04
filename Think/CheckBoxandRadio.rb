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
@browser.goto "https://demoqa.com/checkboxradio/"

newyork= @browser.label(for:'radio-1')

puts newyork.when_present(20).text

if newyork.present?
 # newyork.click
  puts "Radio button is present and clicked on it"

end

hotel_ratings= @browser.labels(xpath:'//fieldset[2]/label')
#hotel_ratings= @browser.labels(for:/checkbox/, class:'ui-checkboxradio-label')

totalchk=hotel_ratings.size
puts "Total length is #{hotel_ratings.size}"

#hotel_ratings.each{|e| e.click if e.attribute('checked').nil?}

hotel_ratings.each do |i|
  puts i.text
  i.click
end

sleep(1)
@browser.scroll.to :center

bedType= @browser.labels(xpath:'//fieldset[3]/label')

bedType.each  {|e| e.click puts e.text}

sleep(1)

radiolist= @browser.labels(xpath:'//fieldset[1]/label')
#radiolist=@browser.checkbox(xpath:'//fieldset[1]/label')

radiolist.each do |e|

  if  e.attribute('checked').nil?
    e.click
    e.text
    break
  end
 end

sleep(2)

@browser.quit