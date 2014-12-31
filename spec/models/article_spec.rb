require "rails_helper"

RSpec.describe Article do
  it { should have_valid(:url).when(
    "http://example.com", "https://foobar.com") }
  it { should_not have_valid(:url).when(
    "", "foobar", "foohttp://") }
end
