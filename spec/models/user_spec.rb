require 'rails_helper'


RSpec.describe User, type: :model do
  let(:user) { User.new(id: 1, email: 'test@test.com', username: 'Test34', password: '123456') }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(user).to be_valid
    end

    it 'is not valid without a username' do
      user.username = nil
      expect(user).not_to be_valid
    end

    it 'is not valid with wrong characters' do
      user.username = '@3%!pT'
      expect(user).not_to be_valid
    end
  end

  describe 'associations' do
    it { should have_many(:articles) }
    it { should have_many(:votes) }
    it { should have_many(:trips) }
  end
end
