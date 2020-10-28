require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:user) { User.new(id: 1, email: 'test@test.com', username: 'Test') }
  let(:category) { Category.create(id: 1, name: 'test', priority: 1) }
  let(:article) do
    user.articles.new(id: 1,
                      title: 'Title',
                      content: 'Anything',
                      created_at: DateTime.now,
                      updated_at: DateTime.now,
                      image: File.new(Rails.root.join('public', 'test_image.png')),
                      user_id: 1,
                      category_id: 1)
  end

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(article).to be_valid
    end

    it 'is not valid without a title' do
      article.title = nil
      expect(article).not_to be_valid
    end

    it 'is not valid without a content' do
      article.content = nil
      expect(article).not_to be_valid
    end

    it {
      should(
        validate_length_of(:content)
          .is_at_most(1000)
          .with_long_message('1000 characters in the content is the maximum allowed.')
      )
    }
    it { should validate_presence_of(:content) }

    it {
      should(
        validate_length_of(:title)
          .is_at_most(50)
          .with_long_message('50 characters in the title is the maximum allowed.')
      )
    }
    it { should validate_presence_of(:title) }
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:votes) }
    it { should belong_to(:category) }
    it { should validate_presence_of(:image) }
  end
end
