require_relative '../pages/nav_bar.rb'
require_relative '../spec_helper.rb'

describe 'OrangeHRM - User Management page' do

  before(:all) do
    @app = BaseClass.new(Capybara::Session.new(:selenium_chrome))
    Selenium::WebDriver::Chrome.driver_path= Dir.pwd + "/browsers/chromedriver"
  end

  it 'Add an user' do
      User_management =  @app
                  .visit
                  .login_as_admin
                  .navigate_user_management_page
      User_management.add_an_user
    #expect(Login_page.title).to eq(Message::LOGIN_TITLE)
  end

end
