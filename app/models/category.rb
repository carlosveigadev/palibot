class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories
  validates :name, presence: true, length: { maximum: 20, too_long: '20 characters in post is the maximum allowed.' }
end
