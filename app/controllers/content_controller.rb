class ContentController < ApplicationController
  before_filter :set_nav_context

  def home
  end

  def gallery
  end

  def contact
  end

  def emporium
  end

  def blog
  end

  private

  def set_nav_context
    @current_page = action_name
    @page_title = @current_page.capitalize
    # TODO: figure out how to sort action_methods appropriately
    @menu = ['home', 'gallery', 'contact', 'emporium', 'blog']
  end
end
