require 'rails_helper'
require "spec_helper"



RSpec.feature "Error creating urls" do


	scenario "A user gets a error" do
		visit "/"
		 
               fill_in "New url", with: "aglo"

		click_link "Create"
		expect(page).to have_content ("url invalid")
		expect(page.current_path).to eq(root_path)
	end
end
