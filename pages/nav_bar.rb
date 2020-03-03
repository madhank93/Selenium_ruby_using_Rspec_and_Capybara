require_relative '../base_class.rb'
require_relative '../pages/login.rb'

class NavBar < BaseClass

  def initialize (driver)
    @driver = driver
  end


  def navigate_timeOff_page
    begin
        @driver.find(:xpath, Locators::LEFT_MENU_NAV_BAR).hover.find(:xpath, Locators::TIME_OFF).click
    rescue
        @driver.find(:xpath, Locators::TIME_OFF).click
    end
    Timeoff.new(@driver)
  end

end
