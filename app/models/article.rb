class Article < ApplicationRecord
  has_one_attached :image
  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories
  belongs_to :user
  has_many :votes, dependent: :destroy
  mount_uploader :image, ImagesUploader
  validates :content, length: { maximum: 1000, too_long: '1000 characters in the content is the maximum allowed.' }
  validates :title, length: { maximum: 50, too_long: '50 characters in the title is the maximum allowed.' }
  validates :title, :content, :image, presence: true
end
