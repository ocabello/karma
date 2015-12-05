# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

#mailer SMTP server configuration
config.action_mailer.delivery_method = :smtp

#STMP settings
config.action_mailer.smtp_settings = {
   address:              'smtp.gmail.com',
   port:                  465,
   domain:               'gmail.com',
   user_name:            'notificationskarma@gmail.com',
   password:             'teamkarma2015',
   authentication:       'plain',
   enable_starttls_auto: true  
}


