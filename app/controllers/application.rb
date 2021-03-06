# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'de3cf3203e6ce529457f1cbdd5a8bf6c'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  before_filter :set_nav_context

  private

  def set_nav_context
    # TODO: figure out how to sort action_methods appropriately
    @menu = ['home', 'gallery', 'contact', 'blog']
  end
end
