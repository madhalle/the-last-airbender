require 'rails_helper'

RSpec.describe "when visiting the home page" do
  it "a user can search for nation members" do
    visit "/"

    # within(".collapse navbar-collapse") do
    find("#bs-example-navbar-collapse-1").find(:option, "Fire Nation").select_option
    # find(".nav navbar-nav", option:[value='Fire Nation']).select_option
      # select("Fire Nation", from: ".nav navbar-nav")
      # find(:css, ".select-field").find(:fire_nation, "Fire Nation").select_option
      # find(:css, "#select-field").select(:fire_nation, :from => "select-field").select_option
      # find(:fire_nation, element_nation, "select-field").select_option
      click_on "Search For Members"
      expect(current_path).to eq("/search")
      expect(page).to have_content("20 Fire Nation Members")
      expect(page).to have_css(".member", count:20)
    # end
  end
end


# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (i.e. 20)
# And I should see a list with the detailed information for the 20 members of the Fire Nation.
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies and a list of enemies
# - Any affiliation that the member has
