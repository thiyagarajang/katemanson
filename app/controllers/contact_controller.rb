class ContactController < ApplicationController
  before_filter :set_nav_context

  def index
  end

  def create
    begin
      name = params[:name]
      email = params[:email]
      subject = params[:subject]
      message = params[:message]
      logger.info <<EOF
Sending email from '#{name} <#{email}>' to '#{CONTACT_EMAIL}' with body:
'#{message}'
EOF
      Notifier.deliver_contact_message name, email, subject, message
      render :text => 'Your message has been sent.'
    rescue
      render :text => <<EOF
Sorry, there has been a problem sending your message - the site owner has been
notified.  Please try again later.
EOF
    end
  end

  private

  def set_nav_context
    super
    @current_page = 'contact'
    @page_title = @current_page.capitalize
  end
end
