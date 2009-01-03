class ContentController < ApplicationController

  def home
  end

  def gallery
  end

  def emporium
  end

  def blog
  end

  private

  def set_nav_context
    super
    @current_page = action_name
    @page_title = @current_page.capitalize
  end
end
