class Image < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :description, length: { maximum: 300 }
  validates :picture, presence: true
  validate :picture_size

  private

    def picture_size
      if picture.size > 2.megabytes
        errors.add(:picture, "should be less than 2 MB")
      end
    end
end
