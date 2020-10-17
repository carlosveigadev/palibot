class Article < ApplicationRecord
  has_one_attached :image
  has_many :article_categories
  has_many :categories, through: :article_categories
  has_many :article_trips
  has_many :trips, through: :article_trips
  belongs_to :user
  has_many :votes, dependent: :destroy
  validates :content, presence: true,
                      length: { maximum: 1000, too_long: '1000 characters in the content is the maximum allowed.' }
  validates :title, presence: true,
                    length: { maximum: 50, too_long: '50 characters in the title is the maximum allowed.' }
end
