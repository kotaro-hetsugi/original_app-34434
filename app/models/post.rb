class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :image, presence: { message: 'を投稿してください' }

  with_options presence: true do
    validates :title
    validates :score
  end

  validates :area_id, numericality: { other_than: 1, message: 'を選択してください' }

  validate :image_content_type, if: :was_attached?

  def image_content_type
    extension = ['image/png', 'image/jpg', 'image/jpeg']
    errors.add(:image, "の拡張子が間違っています") unless image.content_type.in?(extension)
  end

  def was_attached?
    self.image.attached?
  end

  def self.search(search)
    if search[:area_id] == '1' && search[:keyword] != ''
      Post.where(['title LIKE(?) OR text LIKE(?)', "%#{search[:keyword]}%", "%#{search[:keyword]}%"])
    else
      Post.where(['title LIKE(?) OR text LIKE(?)', "%#{search[:keyword]}%",
                  "%#{search[:keyword]}%"]).where(area_id: search[:area_id])
    end
  end

  scope :sort_list, lambda {
    {
      '投稿の新しい順（デフォルト）' => 'created_at DESC',
      '投稿の古い順' => 'created_at ASC',
      '評価の高い順' => 'score DESC',
      'ランダム' => 'rand()'
    }
  }

  belongs_to :area
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  has_many :likes, dependent: :destroy
end
