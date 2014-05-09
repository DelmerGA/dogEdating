class Park < ActiveRecord::Base
  has_many :dogs

  #this is for CarrierWave
  mount_uploader :image, ImageUploader
end
