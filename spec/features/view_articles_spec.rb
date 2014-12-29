require "rails_helper"

RSpec.feature "view articles" do
  scenario "list all articles" do
    articles = FactoryGirl.create_list(:article, 3)

    visit "/articles"

    articles.each do |article|
      expect(page).to have_link(article.title, href: article.url)
    end
  end
end
