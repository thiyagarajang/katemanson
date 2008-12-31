require File.dirname(__FILE__) + '/../../spec_helper'

describe 'shared/_menu' do
  describe 'rendering the menu bar' do
    before do
      assigns[:menu] = ['foo', 'current_page', 'bar']
      assigns[:current_page] = 'current_page'
    end

    def do_render
      render :partial => 'shared/menu'
    end

    it "should output a table with CSS class 'menu'" do
      do_render
      response.should have_tag('table.menu')
    end

    it 'should output a single table row' do
      do_render
      response.should have_tag('tr', :count => 1)
    end

    it "should output exactly one current menu entry" do
      do_render
      response.should have_tag('td.current', :count => 1)
    end

    it 'should display the current page as text' do
      do_render
      response.should have_tag('td.current', 'current_page')
    end

    describe 'outputting the non-current page entries' do
      ['foo', 'bar'].each do |page|
        it "should set the link text to '#{page}'" do
          do_render
          response.should have_tag('td > a', page)
        end

        it "should output a link to '/#{page}'" do
          do_render
          response.should have_tag("td > a[href=/#{page}]")
        end
      end
    end


  end
end