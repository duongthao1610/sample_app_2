class Micropost < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: Settings.micropost.max_content}
  validate  :picture_size
  mount_uploader :picture, PictureUploader

  scope :order_by_created, -> {order created_at: :desc}
  scope :feed, -> (id) {where("user_id = ?", id)}

  private

  def picture_size
    if picture.size > (Settings.micropost.picture_size).megabytes
      errors.add :picture, t(".picture_size")
    end
  end
end
