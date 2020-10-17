require 'rails_helper'

RSpec.describe Trip, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:article_trips) }
    it { should have_many(:articles) }
  end
end
