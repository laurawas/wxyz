class GuestBookMailer < ActionMailer::Base
  default :from => 'mikeysmailbot@gmail.com'
  
  def list_of_email_addresses
    Wxyzer.all_to_csv
    attachments['wxyz_site_signups.csv'] = File.read File.join(Rails.root, '/tmp/emails.csv')
    mail :to => 'laurawas@gmail.com', :subject => 'email list'
  end
end
