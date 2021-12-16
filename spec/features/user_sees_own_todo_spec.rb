require 'rails_helper'

feature "user sees own todos" do
  scenario "does not see others" do
    Todotask.create(title: "Buy milk", email: "person@example.com")

    sign_in_as "someone_else@email.com"
    expect(page).not_to have_css ".todos li", text: "Buy milk"
  end
end
