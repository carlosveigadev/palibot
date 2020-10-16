class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, multiline: true
  validate :validate_username
  validates :username, presence: true
  has_many :articles
  has_many :votes
  has_many :trips, dependent: :destroy

  attr_writer :login

  def login
    @login || username || email
  end

  def validate_username
    errors.add(:username, :invalid) if User.where(email: username).exists?
  end
end
