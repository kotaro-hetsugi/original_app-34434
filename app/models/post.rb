class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area

  validates :image, presence:{ message:'を投稿してください'}
  validates :title, presence: true
  validates :area_id, numericality: { other_than: 1, message:'を選択してください'}

  belongs_to :user
  has_many :comments
  has_one_attached :image
end
