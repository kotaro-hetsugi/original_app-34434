class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area

  validates :image, presence:{ message:'を投稿してください'}

  with_options presence: true do
    validates :title
    validates :score
  end

  validates :area_id, numericality: { other_than: 1, message:'を選択してください'}

  belongs_to :user
  has_many :comments
  has_one_attached :image
end
