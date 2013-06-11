# Load the rails application
require File.expand_path('../application', __FILE__)

ActionDispatch::ParamsParser::DEFAULT_PARSERS.delete(Mime::XML)
ActionDispatch::ParamsParser::DEFAULT_PARSERS.delete(Mime::YAML)

ActiveSupport::XmlMini::PARSING.delete("symbol")
ActiveSupport::XmlMini::PARSING.delete("yaml")

# Initialize the rails application
Enki::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :user_name => "app16215404@heroku.com",
  :password => "tcxg5ymc",
  :domain => "mikemochan.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
