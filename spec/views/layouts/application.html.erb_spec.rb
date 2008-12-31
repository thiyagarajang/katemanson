require File.dirname(__FILE__) + '/../../spec_helper'

# From http://rubyforge.org/pipermail/rspec-users/2007-October/004026.html
describe 'layouts/application' do
  it 'should yield' do
    render :text => "<div class='yieldtest'>yielded</div>"
    response.should have_tag('div.yieldtest', 'yielded')
  end

  it "should set the page title to 'Kate Manson : @page_title'" do
    assigns[:page_title] = 'Location'
    assigns[:menu] = []
    render 'content/home', :layout => 'application'
    response.should have_tag('title', 'Kate Manson : Location')
  end
end