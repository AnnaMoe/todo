require 'rails_helper'

feature "user creates todo" do
  scenario "successfully" do
    visit root_path
    click_on "Add a new Todo"
    # title references to label in the form
    fill_in "Title", with: "Buy milk"
    click_on "Submit"
    expect(page).to have_css '.todos li', text: "Buy milk"
  end
end