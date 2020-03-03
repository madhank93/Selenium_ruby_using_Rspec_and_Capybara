OpenHRM Scripts | Selenium Ruby using Rspec and Capybara
========

To run Selenium tests, Follow the cmd in Terminal:

 ```
 bundle install
 bundle exec rake spec
 ```

#### Project folder structure

.
├── Gemfile
├── Gemfile.lock
├── README.md
├── Rakefile
├── base_class.rb
├── browsers
│   ├── chromedriver
│   └── geckodriver
├── credentials.rb
├── failures
│   └── failure_log.txt
├── locators.rb
├── message.rb
├── pages
│   ├── login.rb
│   └── nav_bar.rb
├── reports
├── spec
│   └── login_spec.rb
├── spec_helper.rb
└── wait_for_ajax.rb
```


Design pattern used is
<ul>
<li>Page object model</li>
<li>Fluent / Chain of Invocations</li>
</ul>
