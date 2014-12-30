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

  scenario "submit form with invalid data" do
    visit "/articles/new"

    click_button "Submit Article"

    expect(page).to have_content("Could not save article.")
    expect(page).to have_content("Title can't be blank")
    expect(page).to have_content("Url can't be blank")
    expect(Article.count).to eq(0)
  end
end
