class ContactController < ApplicationController
  before_filter :set_nav_context

  def index
  end

  def create
    begin
      Notifier.deliver_contact_message params[:name], params[:email], params[:subject],
        params[:message]
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
