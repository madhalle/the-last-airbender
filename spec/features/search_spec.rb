require 'rails_helper'

RSpec.describe "when visiting the home page" do
  it "a user can search for nation members" do
    visit "/"

    find("#bs-example-navbar-collapse-1").find(:option, "Fire Nation").select_option

    click_on "Search For Members"
    expect(current_path).to eq("/search")
    expect(page).to have_content("20 Fire Nation Members")
    expect(page).to have_css(".member", count:20)
    within(first(".member")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".photo")
      expect(page).to have_css(".affiliation")
      expect(page).to have_css(".enemies")
      expect(page).to have_css(".allies")
    end
  end
end
