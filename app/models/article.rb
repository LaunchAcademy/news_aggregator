class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :url, presence: true, format: {
    with: /\Ahttp.+\z/
  }
end
