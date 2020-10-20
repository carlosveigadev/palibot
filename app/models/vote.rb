class Vote < ApplicationRecord
  belongs_to :article
  belongs_to :user

  scope :most_voted, -> { group(:article_id).order('article_id DESC').count }
end
