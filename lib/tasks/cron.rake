desc 'send email to Laura'
task :cron => :environment do
  GuestBookMailer.list_of_email_addresses.deliver
end
