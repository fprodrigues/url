require 'rails_helper'
require "spec_helper"
require 'nokogiri'


RSpec.feature "Creating urls" do

	 before do
		@url = Nokogiri::HTML("<html><body><h1>nomeh1</h1><h2>nomeh2</h2><a href=>tutorial</a></body></html>")
	end

	scenario "A user creates a new url" do
		visit "/"
		 
               fill_in "New url", with: @url

		click_link "Create"
		expect(page).to have_content ("nomeh1")
		expect(page).to have_content ("nomeh2")
		expect(page).to have_content ("tutorial")
		expect(page.current_path).to eq(page_path)
	end
end
