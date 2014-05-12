class Park < ActiveRecord::Base
  has_many :dogs

  #CarrierWave ImageUploader class
  mount_uploader :image, ImageUploader
end
