OpenHRM Scripts | Selenium Ruby using Rspec and Capybara
========

To run Selenium tests, Follow the cmd in Terminal:

 ```
 bundle install
 bundle exec rake spec
 ```

#### Project folder structure

.
├── _browsers
│   └── chromedriver
│   └── geckodriver
├── _failures
│   └── failure_log.txt
├── _pages
│   ├── login.rb
│   └── nav_bar.rb
├── _spec
│   ├── login_spec.rb
│   └── 
├── Gemfile
├── Rakefile
├── base_class.rb
├── credentials.rb
├── locators.rb 
├── message.rb
├── spec_helper.rb
└── wait_for_ajax.rb


Design pattern used is
<ul>
<li>Page object model</li>
<li>Fluent / Chain of Invocations</li>
</ul>
