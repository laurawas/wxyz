if Rails.env.development?
  Wxyz::Application.config.action_mailer.smtp_settings[:password] = YAML::load(File.read(File.join(Rails.root, 'config', 'email.yml')))['password']
elsif Rails.env.production?
  Wxyz::Application.config.action_mailer.smtp_settings[:password] = ENV['EMAIL_PASSWORD']
end
