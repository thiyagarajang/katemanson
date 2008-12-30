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
    @nav_title = action_name.capitalize
  end
end
