class Vote < ApplicationRecord
  validates :user_id, uniqueness: { scope: :article_id }
  belongs_to :user
  has_one :article
end
