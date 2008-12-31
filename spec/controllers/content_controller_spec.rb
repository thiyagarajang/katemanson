require File.dirname(__FILE__) + '/../spec_helper'

describe ContentController do
  ContentController.action_methods.each do |action|
    describe "responding to GET #{action}" do
      it "should set 'page_title' to '#{action.capitalize}' for the view" do
        get action
        assigns[:page_title].should == action.capitalize
      end

      it "should set 'menu' to \"['home', 'gallery', 'contact', 'emporium', 'blog']\" for the view" do
        get action
        assigns[:menu].should == ['home', 'gallery', 'contact', 'emporium', 'blog']
      end

      it "should render #{action}.html.erb" do
        get action
        response.should render_template("content/#{action}")
      end
    end
  end
end