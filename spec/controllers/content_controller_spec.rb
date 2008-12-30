require File.dirname(__FILE__) + '/../spec_helper'

describe ContentController do
  describe 'responding to GET :home' do
    def do_get
      get :home
    end

    it "should set @nav_title to 'Home'" do
      do_get
      assigns[:nav_title].should == 'Home'
    end

    it 'should render home.html.erb' do
      do_get
      response.should render_template('content/home')
    end
  end


  describe 'responding to GET :gallery' do
    def do_get
      get :gallery
    end

    it "should set @nav_title to 'Gallery'" do
      do_get
      assigns[:nav_title].should == 'Gallery'
    end

    it 'should render gallery.html.erb' do
      do_get
      response.should render_template('content/gallery')
    end
  end


  describe 'responding to GET :contact' do
    def do_get
      get :contact
    end

    it "should set @nav_title to 'Contact'" do
      do_get
      assigns[:nav_title].should == 'Contact'
    end

    it 'should render contact.html.erb' do
      do_get
      response.should render_template('content/contact')
    end
  end


  describe 'responding to GET :emporium' do
    def do_get
      get :emporium
    end

    it "should set @nav_title to 'Emporium'" do
      do_get
      assigns[:nav_title].should == 'Emporium'
    end

    it 'should render emporium.html.erb' do
      do_get
      response.should render_template('content/emporium')
    end
  end


  describe 'responding to GET :blog' do
    def do_get
      get :blog
    end

    it "should set @nav_title to 'Blog'" do
      do_get
      assigns[:nav_title].should == 'Blog'
    end

    it 'should render blog.html.erb' do
      do_get
      response.should render_template('content/blog')
    end
  end
end