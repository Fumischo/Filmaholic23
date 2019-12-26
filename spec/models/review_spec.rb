require 'rails_helper'

RSpec.describe Review, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end
  it "nameが空ならバリデーションが通らない" do
    review = Review.new(name: '', content: '失敗テスト', score: '5')
    expect(review).not_to be_valid
  end

  it "contentが空ならバリデーションが通らない" do
    review = Review.new(name: 'Fumi', content: '', score: '5')
    expect(review).not_to be_valid
  end

  it "scoreが空ならバリデーションが通らない" do
    review = Review.new(name: 'Fumi', content: 'テスト', score: '')
    expect(review).not_to be_valid
  end

  it "scoreが5以上ならバリデーションが通らない" do
    review = Review.new(name: 'Fumi', content: 'テスト', score: '6')
    expect(review).not_to be_valid
  end
end