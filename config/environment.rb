# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Teacher::Application.initialize!

Teacher::Application.configure do
	config.action_mailer.delivery_method = :smtp 
	config.action_mailer.smtp_settings = {
address:         "smtp.gmail.com",
port:            587,
domain:          "http://0.0.0.0:3000",
authentication:  "plain",
user_name:       "selfteachershop@gmail.com",
password:        "gf765bv21",
enable_starttls_auto: true
}
end