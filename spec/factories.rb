FactoryGirl.define do
  factory :article do
    sequence(:title) { |n| "Something Really Interesting #{n}" }
    url "https://www.google.com"
  end
end
