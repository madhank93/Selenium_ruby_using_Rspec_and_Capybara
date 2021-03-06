module Locators

  #Common locators
  ADD = "//input[@id='btnAdd']"
  SAVE = "//input[@id='btnSave']"

  #Login page
  LOGIN_PAGE_URL = "https://opensource-demo.orangehrmlive.com/"
  LOGIN_USERNAME = "txtUsername"
  LOGIN_PASSWORD = "txtPassword"
  LOGIN = "btnLogin"
  LOGIN_ERR_MSG = "//span[@id='spanMessage']"
  LOGOUT_DROPDOWN = "//a[@id='welcome']"
  LOGOUT = "//a[contains(text(),'Logout')]"
  FORGOT_PASSWORD = "//a[contains(text(),'Forgot your password?')]"
  FORGOT_TITLE = "//h1[contains(text(),'Forgot Your Password?')]"

  #Navigation menu
  ADMIN = "//b[contains(text(),'Admin')]"
  USER_MANAGEMENT = "//a[@id='menu_admin_UserManagement']"
  USERS = "//a[@id='menu_admin_viewSystemUsers']"
  PERFORMANCE = "//b[contains(text(),'Performance')]"
  CONFIGURE = "//a[@id='menu_performance_Configure']"
  KPI = "//a[@id='menu_performance_searchKpi']"

  #User Management
  EMP_NAME = "systemUser_employeeName_empName"
  USERNAME = "//input[@id='systemUser_userName']"
  USER_PASSWORD = "//input[@id='systemUser_password']"
  USER_CONFIRM_PASSWORD = "//input[@id='systemUser_confirmPassword']"


  #Performance
  JOB_TITLE = "defineKpi360_jobTitleCode"
  KPI_INDICATOR = "defineKpi360_keyPerformanceIndicators"

  #Dashboard page
  EMPLOYEE_DASHBOARD = "//h1[contains(text(),'Dashboard')]"

end
