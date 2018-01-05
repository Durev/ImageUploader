class Image < ApplicationRecord
  mount_uploader :name, NameUploader
  validates :description, length: { maximum: 300 }
  validates :name, presence: true
  validate :name_size

  private

    def name_size
      if name.size > 2.megabytes
        errors.add(:name, "should be less than 2 MB")
      end
    end
end
