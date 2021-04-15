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
    if search[:area_id] == "1" && search[:keyword] != ""
      Post.where(['title LIKE(?) OR text LIKE(?)', "%#{search[:keyword]}%", "%#{search[:keyword]}%"])
    else
      Post.where(['title LIKE(?) OR text LIKE(?)', "%#{search[:keyword]}%", "%#{search[:keyword]}%"]).where(area_id: search[:area_id])
    end
  end

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
end
