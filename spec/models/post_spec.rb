require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '旅先投稿' do
    context '投稿できるとき' do
      it 'すべての項目が正しく存在すれば登録できる' do
        expect(@post).to be_valid
      end
      it 'textが空でも登録できる' do
        @post.text = ''
        expect(@post).to be_valid
      end
    end

    context '投稿できないとき' do
      it 'imageがnilでは投稿できない' do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('画像を投稿してください')
      end
      it 'titleが空では投稿できない' do
        @post.title = ''
        @post.valid?
        expect(@post.errors.full_messages).to include('旅先名を入力してください')
      end
      it 'area_idが1では投稿できない' do
        @post.area_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include('都道府県を選択してください')
      end
      it 'scoreが空では投稿できない' do
        @post.score = ''
        @post.valid?
        expect(@post.errors.full_messages).to include('評価を入力してください')
      end
    end


  end

end
