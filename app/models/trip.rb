class Trip < ApplicationRecord
  belongs_to :user
  has_many :article_trips
  has_many :articles, through: :article_trips
end
