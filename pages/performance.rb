require_relative '../spec_helper.rb'
require_relative '../pages/login.rb'

class Performance < BaseClass

  def initialize (driver)
    @driver = driver
  end

  def add_a_KPI
    @driver.find(:xpath, Locators::ADD).click
    @driver.select("Finance Manager", :from => Locators::JOB_TITLE)
    @driver.fill_in(Locators::KPI_INDICATOR , :with => '1234')
    @driver.find(:xpath, Locators::SAVE).click
  end

end
