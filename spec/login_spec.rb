require_relative '../pages/nav_bar.rb'
require_relative '../spec_helper.rb'

describe 'OrangeHRM - Login page' do

  before(:all) do
    @app = BaseClass.new(Capybara::Session.new(:selenium_chrome))
    Selenium::WebDriver::Chrome.driver_path= Dir.pwd + "/browsers/chromedriver"
  end

  it 'To navigate to Login page' do
      Login_page = @app
                   .visit
    expect(Login_page.title).to eq(Message::LOGIN_TITLE)
  end

  it 'Login with valid credentials' do
      Login_valid = @app
                    .visit
                    .login_as_admin
      expect(Login_valid.text(Locators::EMPLOYEE_DASHBOARD)).to eq(Message::DASHBOARD)
      Login_valid.logout
  end

  it 'Login with invalid username' do
      Inavlid_username =  @app
                          .visit
                          .login_page
      Inavlid_username.login_with_invalid_username
      expect(Inavlid_username.text(Locators::LOGIN_ERR_MSG)).to eq(Message::LOGIN_ERR_MSG)
  end

  it 'Login with invalid password' do
      Invalid_password =  @app
                          .visit
                          .login_page
      Invalid_password.login_with_invalid_password
      expect(Invalid_password.text(Locators::LOGIN_ERR_MSG)).to eq(Message::LOGIN_ERR_MSG)
  end

  it 'Login with invalid username and password' do
      Invalid_usr_pwd =  @app
                        .visit
                        .login_page
      Invalid_usr_pwd.login_with_invalid_username_pwd
      expect(Invalid_usr_pwd.text(Locators::LOGIN_ERR_MSG)).to eq(Message::LOGIN_ERR_MSG)
  end

  it 'Login with valid password and no username' do
      No_username =  @app
                     .visit
                     .login_page
      No_username.login_with_no_username
      expect(No_username.text(Locators::LOGIN_ERR_MSG)).to eq(Message::USERNAME_ERR_MSG)
  end

  it 'Login with valid username and no password' do
      No_password = @app
                    .visit
                    .login_page
      No_password.login_with_no_pwd
      expect(No_password.text(Locators::LOGIN_ERR_MSG)).to eq(Message::PSWD_ERR_MSG)
  end

  it 'Login with no username and password' do
      No_pwd_and_usr =  @app
                        .visit
                        .login_page
      No_pwd_and_usr.login_with_no_username_pwd
      expect(No_pwd_and_usr.text(Locators::LOGIN_ERR_MSG)).to eq(Message::USERNAME_ERR_MSG)
  end

  it 'To navigate to forgot password page' do
      Forgot_pswd =   @app
                      .visit
                      .login_page
     Forgot_pswd.navigate_forgot_pwd_page
     expect(Forgot_pswd.text(Locators::FORGOT_TITLE)).to eq(Message::USERNAME_ERR_MSG)
  end

end
