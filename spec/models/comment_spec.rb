require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    user = FactoryBot.create(:user)
    post = FactoryBot.create(:post)
    @comment = FactoryBot.build(:comment, user_id: user.id, post_id: post.id)
    sleep(0.1)
  end

  describe 'コメント投稿' do
    context 'コメント投稿できる時' do
      it 'コメントが入力されていれば投稿できる' do
        expect(@comment).to be_valid
      end
    end

    context 'コメント投稿できない時' do
      it 'コメントが空だと投稿できない' do
        @comment.text = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Textを入力してください')
      end
    end
  end
end
