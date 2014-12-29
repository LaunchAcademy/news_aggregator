require "rails_helper"

RSpec.feature "add article" do
  scenario "successfully add an article" do
    visit "/articles/new"

    fill_in "Title", with: "Some Fascinating Article"
    fill_in "URL", with: "http://www.google.com"
    click_button "Submit Article"

    expect(page).to have_content("Article submitted.")
    expect(page).to have_link("Some Fascinating Article",
      href: "http://www.google.com")
  end
end
