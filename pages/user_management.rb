require_relative '../spec_helper.rb'
require_relative '../pages/login.rb'

class UserManagement < BaseClass

  def initialize (driver)
    @driver = driver
  end

  def add_an_user
    @driver.find(:xpath, Locators::ADD).click
    @driver.fill_in(Locators::EMP_NAME, :with => 'Fiona Grace').native.send_keys(:return)
    wait_for_ajax
    @driver.find(:xpath, Locators::USERNAME).hover.click.native.send_keys("Madhan")
    @driver.find(:xpath, Locators::USER_PASSWORD).hover.click.native.send_keys('Password@123')
    @driver.find(:xpath, Locators::USER_CONFIRM_PASSWORD).hover.click.native.send_keys('Password@123')
    @driver.find(:xpath, Locators::SAVE).click
  end

end
