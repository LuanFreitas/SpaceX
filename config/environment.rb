# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
Time::DATE_FORMATS[:ad] = "%d/%m/%Y - %H:%M:%S"
Time::DATE_FORMATS[:admin] = "%d/%m/%Y - %H:%M:%S"
