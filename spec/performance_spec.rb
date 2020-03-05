require_relative '../pages/nav_bar.rb'
require_relative '../spec_helper.rb'

describe 'OrangeHRM - User Management page' do

  before(:all) do
    @app = BaseClass.new(Capybara::Session.new(:selenium_chrome))
    Selenium::WebDriver::Chrome.driver_path= Dir.pwd + "/browsers/chromedriver"
  end

  it 'Add an key performance indicator ' do
      User_management =  @app
                  .visit
                  .login_as_admin
                  .navigate_performance_KPI_page
      User_management.add_a_KPI
  end

end
