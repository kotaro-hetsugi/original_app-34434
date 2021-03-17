class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area

  validates :image, presence: { message: 'を投稿してください' }

  with_options presence: true do
    validates :title
    validates :score
  end

  validates :area_id, numericality: { other_than: 1, message: 'を選択してください' }

  def self.search(search)
    if search != ''
      Post.where(['title LIKE(?) OR text LIKE(?)', "%#{search}%", "%#{search}%"])
    else
      Post.includes(:user).order('created_at desc')
    end
  end

  belongs_to :user
  has_many :comments
  has_one_attached :image
end
