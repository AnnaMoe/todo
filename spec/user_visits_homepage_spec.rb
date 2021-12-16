require 'rails_helper'

# equivalent to unit test feature-describe, scenario-it
feature "user visits homepage" do
  scenario "successfully" do
    visit root_path
    #expext(page) is rspec syntax
    #page is provided by capybara
    expect(page).to have_css 'h1', text: 'Todos'
  end
end

