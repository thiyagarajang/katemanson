require File.dirname(__FILE__) + '/../spec_helper'

describe ContentController do
  describe 'responding to GET :home' do
    it 'should render home.html.erb' do
      get :home
      response.should render_template('content/home')
    end
  end

  describe 'responding to GET :gallery' do
    it 'should render gallery.html.erb' do
      get :gallery
      response.should render_template('content/gallery')
    end
  end

  describe 'responding to GET :contact' do
    it 'should render contact.html.erb' do
      get :contact
      response.should render_template('content/contact')
    end
  end

  describe 'responding to GET :emporium' do
    it 'should render emporium.html.erb' do
      get :emporium
      response.should render_template('content/emporium')
    end
  end

  describe 'responding to GET :blog' do
    it 'should render blog.html.erb' do
      get :blog
      response.should render_template('content/blog')
    end
  end
end