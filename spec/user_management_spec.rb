require_relative '../pages/nav_bar.rb'
require_relative '../spec_helper.rb'

describe 'OrangeHRM - User Management page' do

  before(:all) do
    @app = BaseClass.new(Capybara::Session.new(:selenium_chrome))
    Selenium::WebDriver::Chrome.driver_path= Dir.pwd + "/browsers/chromedriver"
  end

  it 'Add an user' do
      Performance =  @app
                  .visit
                  .login_as_admin
                  .navigate_user_management_page
      Performance.add_an_user
  end

end
