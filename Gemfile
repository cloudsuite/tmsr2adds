source 'http://rubygems.org'

ruby '1.9.3' 
gem 'rails', '3.1.5'


# Gems unique to specific environments —————————————

group :development do
	# gem 'sqlite3-ruby', :require => 'sqlite3'
	gem 'pg'
	gem 'sitemap_generator'
  end
group :production do
  gem 'thin'
  gem 'pg'
end

# gems for asset pipeline  ——————————————————————

group :assets do 
  gem 'coffee-rails', '~>3.1.0'
  gem 'bootstrap-sass', '~> 2.0.2' # added per StackOverflow. initializers? 
  gem 'uglifier'
end

# run unicorn web server rather than webrick to get HTTP streaming —————————————————————————————
# gem 'unicorn' # note: app apparently has middleware that is incompatible with HTTP streaming; index page does not come up

gem 'sass-rails', '3.1.4' # outside assets group to allow runtime compilation

# jquery, [jquery-ui? ] ———————————————————————————
gem 'jquery-rails'

# gems for debugger ———————————————————————————————

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:—————————————————————————————

  gem 'activeadmin', '~> 0.4.3'
  #gem 'netsuite_client' # note: we were using 1.0 with 1.8.7. Not sure about 1.1
  # commented out because getting internal server error 500 — related to soap
  # Also commented our javascript in layouts/application.html.erb that set up view-cart by calling netsuite
  # Do I have to comment out on-write handler for writes to .... that pushes stuff to Netsuite?
  gem 'acts_as_tree','0.1.1'
  # gem 'kaminari', '0.13.0' let bundler load it as a dependency of activeadmin
  #gem 'meta_where' # incompatible with Rails 3.1.  Replace with Squeel (or just Arel)
  gem 'squeel'
  gem 'meta_search' # originally commented out because I assumed it used meta_where
    #  meta-search v1.1.0 runs on Rails 3.1.  Meta-search will eventually be replaced by Ransack
    #  Note from attempt to boot rails: 
    # 'ActiveAdmin requires meta_search >= 1.1.0.pre and sass-rails ~> 3.1.0.rc to work with rails >= 3.1.0
  gem 'devise'
  gem 'formtastic','~> 2.1.1'
  gem "simple_form"
  gem 'newrelic_rpm'
  
  # for rake task that walks the site and reports memory usage
  gem 'nokogiri'
  gem 'mechanize'
  gem 'oink'
  gem 'rack-mini-profiler'
   
	
# gem 'bj'

# gem 'aws-s3', :require => 'aws/s3'



