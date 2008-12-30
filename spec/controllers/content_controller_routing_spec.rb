require File.dirname(__FILE__) + '/../spec_helper'

describe 'Routing for', ContentController do
  it "should map { :contoller => 'content', :action => 'home' to '/' }" do
    route_for(:controller => 'content', :action => 'home').should == '/'
  end

  it "should map { :contoller => 'content', :action => 'gallery' to '/gallery' }" do
    route_for(:controller => 'content', :action => 'gallery').should == '/gallery'
  end

  it "should map { :contoller => 'content', :action => 'contact' to '/contact' }" do
    route_for(:controller => 'content', :action => 'contact').should == '/contact'
  end

  it "should map { :contoller => 'content', :action => 'emporium' to '/emporium' }" do
    route_for(:controller => 'content', :action => 'emporium').should == '/emporium'
  end

  it "should map { :contoller => 'content', :action => 'blog' to '/blog' }" do
    route_for(:controller => 'content', :action => 'blog').should == '/blog'
  end
end