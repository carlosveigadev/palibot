require 'rails_helper'

RSpec.describe ArticleTrip, type: :model do
  describe 'associations' do
    it { should belong_to(:trip) }
    it { should belong_to(:article) }
  end
end
