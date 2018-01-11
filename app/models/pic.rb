class Pic < ApplicationRecord
belongs_to :event
belongs_to :user

mount_uploader :subimage, SubimageUploader
end
