class Notifier < ActionMailer::Base
  def contact_message name, email, subject, message
    recipients 'david.dunwoody@gmail.com'
    reply_to email
    subject "[katemanson.co.uk] #{subject}"
    # Email body substitutions go here
    content_type 'text/html'
    body :name => name, :message => message
  end
end