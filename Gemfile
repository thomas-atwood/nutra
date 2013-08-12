

source 'https://rubygems.org'
gem 'rails_admin', "~>0.4.5"
# 1.9.3p362 is the current default on the Cedar stack 
ruby '1.9.3'
gem 'rails', '3.2.13'

group :production do
  gem 'thin'
  gem 'pg'
end
group :development do
  gem 'sqlite3'
  gem 'debugger'
end

gem 'sass-rails',   '~> 3.2.3' # outside assets group to allow runtime compilation of assets

group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem "bootstrap-sass", ">= 2.3.0.0"
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
#gem "rspec-rails", ">= 2.12.2", :group => [:development, :test]
#gem "database_cleaner", ">= 1.0.0.RC1", :group => :test
#gem "email_spec", ">= 1.4.0", :group => :test
#gem "cucumber-rails", ">= 1.3.1", :group => :test, :require => false
#gem "launchy", ">= 2.2.0", :group => :test
#gem "capybara", ">= 2.0.3", :group => :test
#gem "factory_girl_rails", ">= 4.2.0", :group => [:development, :test]
#gem "bootstrap-sass", ">= 2.3.0.0"
gem "devise", ">= 2.2.3" # was 2.2.3 but when installed piggybak started getting msgs: "You cannot specify the same gem twice with different version requirements. "
gem "cancan", ">= 1.6.9"
#gem "rolify", ">= 3.2.0"
gem "piggybak"
gem "httparty"
gem "simple_form", ">= 2.1.0"
gem "ckeditor"
gem "quiet_assets", ">= 1.0.2", :group => :development
#gem "figaro", ">= 0.6.3"
gem "better_errors", ">= 0.7.2", :group => :development
#gem "binding_of_caller", ">= 0.7.1", :group => :development, :platforms => [:mri_19, :rbx]
gem "hub", ">= 1.10.2", :require => nil, :group => [:development]
gem "nokogiri"
gem "xml-simple"
gem 'lazy_high_charts'
gem 'rails_admin', "~>0.4.5"
gem 'safe_yaml', "~> 0.6.3"
gem 'thin'
gem 'gon'

#gem 'chartjs-ror'
#gem "google_visualr", ">= 2.1"
#gem 'google_charts'
