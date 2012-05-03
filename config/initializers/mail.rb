ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => 'gmail.com',
  :user_name => 'jpcompa@gmail.com',
  :password => 'edithl89',
  :authentication => 'plain',
  :enable_starttls_auto => true
  
  }