require_relative '../capybara/locators.rb'
require_relative '../capybara/message.rb'
require_relative '../capybara/wait_for_ajax.rb'
require_relative '../capybara/credentials.rb'
require_relative '../capybara/pages/nav_bar.rb'

class BaseClass

  include Locators
  include WaitForAjax
  include Message
  include RSpec::Matchers

  def initialize(driver)
    @driver = driver
  end

  def visit
    @driver.visit (Locators::LOGIN_PAGE_URL)
    BaseClass.new(@driver)
  end

  def login_page
    Login.new(@driver)
  end

  def login_as_admin
    @driver.fill_in(Locators::LOGIN_USERNAME, :with => 'admin')
    @driver.fill_in(Locators::LOGIN_PASSWORD, :with => 'admin123')
    @driver.click_button(LOGIN)
    NavBar.new(@driver)
  end

  def skip_login
    NavBar.new(@driver)
  end

  def quit
    @driver.quit
  end

  def text(element_path)
    @driver.find(:xpath, element_path).text
  end

  def logout
    sleep 5
    @driver.find(:xpath, Locators::LOGOUT_DROPDOWN).click.find(:xpath, Locators::LOGOUT).click
  end

  def title
    @driver.title
  end

end
