require 'rails_helper'

feature "user marks to do incomplete" do
  scenario "successfully" do
    sign_in

    create_todo "Buy milk"

    within("li:last-child") do
      # save_and_open_page
      click_on "Mark complete"
      click_on "Mark incomplete"
    end
    
    #expect(page).not_to display_completed_todo "Buy milk"
    expect(page).to display_todo "Buy milk"
  end

end 