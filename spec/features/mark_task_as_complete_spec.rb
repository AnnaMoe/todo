require 'rails_helper'

feature "user marks to do as done" do
  scenario "successfully" do
    sign_in

    create_todo "Buy milk"

    within("li:last-child") do
      # save_and_open_page
      click_on "Mark complete"
    end

    expect(page).to display_completed_todo "Buy milk"
  end

end 