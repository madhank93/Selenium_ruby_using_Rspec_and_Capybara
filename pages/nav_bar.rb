require_relative '../base_class.rb'
require_relative '../pages/login.rb'
require_relative '../pages/user_management.rb'
require_relative '../pages/performance.rb'

class NavBar < BaseClass

  def initialize (driver)
    @driver = driver
  end


  def navigate_user_management_page
    @driver.find(:xpath, Locators::ADMIN).hover
           .find(:xpath, Locators::USER_MANAGEMENT).hover
           .find(:xpath, Locators::USERS).click
    UserManagement.new(@driver)
  end

  def navigate_performance_KPI_page
    @driver.find(:xpath, Locators::PERFORMANCE).hover
           .find(:xpath, Locators::CONFIGURE).hover
           .find(:xpath, Locators::KPI).click
    Performance.new(@driver)
  end

end
