# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Tmsr2::Application.initialize!

# Rails::Initializer.run do |config|
  # replace standard rails logger with one that rights its log files in a format that can be read by
  # the memory use analyzer oink.rb and the log analysis gem ...
#  config.gem 'hodel_3000_compliant_logger'
#  begin
#    require 'hodel_3000_compliant_logger'
#    config.logger = Hodel3000CompliantLooger.new(config.log_path)
#  rescue
#    $stderr.puts "Hodel3000CompliantLogger unavailable, oink will be disabled"
#  end
  
# end