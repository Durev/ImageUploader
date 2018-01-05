class Image < ApplicationRecord
  mount_uploader :name, NameUploader
end
