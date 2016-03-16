source 'https://rubygems.org'

gem 'rails', '4.2.6'

gem 'unicorn', '5.0.1'

if ENV['SLIMMER_DEV']
  gem 'slimmer', :path => '../slimmer'
else
  gem 'slimmer', '9.1.0'
end
gem 'plek', '1.12.0'

gem 'gds-api-adapters', '~> 29.6'
gem 'govuk_frontend_toolkit', '4.9.0'
gem 'govuk-content-schema-test-helpers', '~> 1.4.0'
gem 'sass-rails', '5.0.4'

gem 'logstasher', '0.6.5'
gem 'airbrake', '4.3.6'
gem 'rack_strip_client_ip', '0.0.1'

gem 'uglifier', '~> 2.7', '>= 2.7.2'

group :development, :test do
  gem 'rspec-rails', '~> 3.4'
  gem 'capybara', '~> 2.6'
  gem 'simplecov-rcov', '0.2.3', :require => false
  gem 'ci_reporter_rspec', '~> 1.0.0'
  gem 'webmock', :require => false
  gem 'timecop', '0.6.2.2'
  gem 'poltergeist', '1.9.0'
  gem 'rubocop'
end
