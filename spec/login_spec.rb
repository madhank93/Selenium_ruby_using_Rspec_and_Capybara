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

=begin

#LP0004
  it 'Login with invalid password' do
      Invalid_password =  @app
                          .visit
                          .sign_in
      Invalid_password.login_with_invalid_password
      expect(Invalid_password.text(Locators::LOGIN_ERR_FLASH_MSG)).to eq("Invalid email or password. If you've locked your account by failing too many times, we will notify you by email. You can send yourself an unlock link with the Unlock Mail link at the bottom of this page.")
  end

#LP0005
  it 'Login with invalid username and password' do
      Invalid_usr_pwd =  @app
                        .visit
                        .sign_in
      Invalid_usr_pwd.login_with_invalid_username_pwd
      expect(Invalid_usr_pwd.text(Locators::LOGIN_ERR_FLASH_MSG)).to eq("Invalid email or password. If you've locked your account by failing too many times, we will notify you by email. You can send yourself an unlock link with the Unlock Mail link at the bottom of this page.")
  end

#LP0006
  it 'Login with valid password and no username' do
      No_username =  @app
                     .visit
                     .sign_in
      No_username.login_with_no_username
      expect(No_username.text(Locators::LOGIN_ERR_FLASH_MSG)).to eq("You need to sign in or sign up before continuing.")
  end

#LP0007
  it 'Login with valid username and no password' do
      No_password = @app
                    .visit
                    .sign_in
      No_password.login_with_no_pwd
      expect(No_password.text(Locators::LOGIN_ERR_FLASH_MSG)).to eq("Invalid email or password. If you've locked your account by failing too many times, we will notify you by email. You can send yourself an unlock link with the Unlock Mail link at the bottom of this page.")
  end

#LP0008
  it 'Login with no username and password' do
      No_pwd_and_usr =  @app
                        .visit
                        .sign_in
      No_pwd_and_usr.login_with_no_username_pwd
      expect(No_pwd_and_usr.text(Locators::LOGIN_ERR_FLASH_MSG)).to eq("You need to sign in or sign up before continuing.")
  end

#LP0009
  it 'To navigate to forgot password page' do
      Forgot_pswd =   @app
                      .visit
                      .sign_in
     Forgot_pswd.navigate_forgot_pwd_page
     expect(Forgot_pswd.text(Locators::FORGOT_PASSWORD_ELM)).to eq("Forgot your password?")
  end

#LP0010
  it 'Verfiy forgot password mail is generating' do
      Forgot_pswd_mail =  @app
                          .visit
                          .sign_in
      Forgot_pswd_mail.navigate_forgot_pwd_page
      Forgot_pswd_mail.submit_forgot_password_req
      expect(Forgot_pswd_mail.text(Locators::REST_MAIL)).to eq("Your password reset mail has been sent.")
  end

  it 'Verify forgot password mail has been sent in mailcatcher' do
      Forgot_pswd_mailcatcher = @app
                                .open_mailcatcher
                                .
  end

#LP0011
  it 'Verify forgot password is generating with an invalid mail id' do
      Invalid_mail_id =   @app
                          .visit
                          .sign_in
      Invalid_mail_id.navigate_forgot_pwd_page
      Invalid_mail_id.check_forgot_pwd_with_invalid_email
      expect(Invalid_mail_id.text(Locators::MAIL_ID_NOT_FND)).to eq("Email address not found")
  end

#LP0012
  it 'Navigate to unlock email page' do
      Unlock_email_page =   @app
                            .visit
                            .sign_in
      Unlock_email_page.navigate_unlock_email_page
      expect(Unlock_email_page.text(Locators::UNLOCK_MAIL_ELM)).to eq("Resend unlock email")
  end

#LP0013
  it 'Verfiy unlock mail is generating' do
      Unlock_mail = @app
                    .visit
                    .sign_in
      Unlock_mail.navigate_unlock_email_page
      Unlock_mail.submit_unlock_mail_req
  end

#LP0014
  it 'Verfiy unlock mail is generating with an invalid email' do
      Unlock_invalid_mail =   @app
                              .visit
                              .sign_in
      Unlock_invalid_mail.navigate_unlock_email_page
      Unlock_invalid_mail.submit_unlock_mail_with_invalid_email
  end
=end

end
