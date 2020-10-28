require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { Category.new(id: 1, name: 'test') }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(category).to be_valid
    end

    it 'is not valid without a name' do
      category.name = nil
      expect(category).not_to be_valid
    end

    it {
      should(
        validate_length_of(:name)
          .is_at_most(20)
          .with_long_message('20 characters in post is the maximum allowed.')
      )
    }
    it { should validate_presence_of(:name) }
  end

  describe 'associations' do
    it { should have_many(:articles) }
  end
end
