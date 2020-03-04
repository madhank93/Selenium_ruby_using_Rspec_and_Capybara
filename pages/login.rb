require_relative '../spec_helper.rb'
require_relative '../pages/nav_bar.rb'

class Login < BaseClass

  def initialize(driver)
    @driver = driver
  end

  def login_with_invalid_username
    @driver.fill_in(Locators::LOGIN_USERNAME, :with => "test@mail.in")
    @driver.fill_in(Locators::LOGIN_PASSWORD, :with => Credentials::PASSWORD)
    @driver.click_button(LOGIN)
  end

  def login_with_invalid_password
    @driver.fill_in(Locators::LOGIN_USERNAME, :with => Credentials::ADMIN_USERNAME)
    @driver.fill_in(Locators::LOGIN_PASSWORD, :with => "invalid")
    @driver.click_button(LOGIN)
  end

  def login_with_invalid_username_pwd
    @driver.fill_in(Locators::LOGIN_USERNAME, :with => "invalidUsername")
    @driver.fill_in(Locators::LOGIN_PASSWORD, :with => "invalidPassword")
    @driver.click_button(LOGIN)
  end

  def login_with_no_username
    @driver.fill_in(Locators::LOGIN_USERNAME, :with => "")
    @driver.fill_in(Locators::LOGIN_PASSWORD, :with => Credentials::PASSWORD)
    @driver.click_button(LOGIN)
  end

  def login_with_no_pwd
    @driver.fill_in(Locators::LOGIN_USERNAME, :with => Credentials::ADMIN_USERNAME)
    @driver.fill_in(Locators::LOGIN_PASSWORD, :with => "")
    @driver.click_button(LOGIN)
  end

  def login_with_no_username_pwd
    @driver.fill_in(Locators::LOGIN_USERNAME, :with => "")
    @driver.fill_in(Locators::LOGIN_PASSWORD, :with => "")
    @driver.click_button(LOGIN)
  end

  def navigate_forgot_pwd_page
    @driver.find(:xpath, Locators::FORGOT_PASSWORD).click
  end

  def submit_forgot_password_req
    @driver.fill_in(Locators::EMAIL_ADDRESS, :with => Credentials::ADMIN_USERNAME)
    @driver.find(:xpath, Locators::SEND_BUTTON).click
  end

  def check_forgot_pwd_with_invalid_email
    @driver.fill_in(Locators::EMAIL_ADDRESS, :with => "invalid@mail.com")
    @driver.find(:xpath, Locators::SEND_BUTTON).click
  end

  def navigate_unlock_email_page
    @driver.find(:xpath, Locators::UNLOCK_MAIL).click
  end

  def submit_unlock_mail_req
    @driver.fill_in(Locators::EMAIL_ADDRESS, :with => Credentials::ADMIN_USERNAME)
    @driver.find(:xpath, Locators::SEND_BUTTON).click
  end

  def submit_unlock_mail_with_invalid_email
    @driver.fill_in(Locators::EMAIL_ADDRESS, :with => "invalid@mail.com")
    @driver.find(:xpath, Locators::SEND_BUTTON).click
  end
end
