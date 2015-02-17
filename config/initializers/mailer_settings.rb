ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :user_name => ENV['meghan.hartman09@gmail.com'],
    :password => ENV['16qcr*F3'],
    :authentication => "plain"
}