# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Configure ActionMailer
ActionMailer::Base.smtp_settings = {
    :user_name => 'app34086970@heroku.com',
    :password => 'rfdmgyac',
    :domain => 'goverlan-order-summaries.herokuapp.com',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
}