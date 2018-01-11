class Event < ApplicationRecord
  has_many :pics
  mount_uploader :image, EventimageUploader

  accepts_nested_attributes_for :pics, allow_destroy: true
end
