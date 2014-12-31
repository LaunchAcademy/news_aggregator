require "rails_helper"

RSpec.describe Article do
  it "is valid when url starts with http protocol" do
    article = Article.new
    article.title = "Some Great Article"
    article.url = "http://example.com"

    expect(article.valid?).to eq(true)
  end

  it "is invalid when url is missing protocol" do
    article = Article.new
    article.title = "Some Great Article"
    article.url = "foobar"

    expect(article.valid?).to eq(false)
  end
end
