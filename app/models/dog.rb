class Dog < ActiveRecord::Base
  belongs_to :park
  belongs_to :user
  has_many :comments

  mount_uploader :image, ImageUploader
  
  after_save :enqueue_image
  
  # def image_name
  #   File.basename(image.path || image.filename) if image
  # end

  def enqueue_image
    ImageWorker.perform_async(id, key) if key.present?
  end

  class ImageWorker
    include Sidekiq::Worker
    
    # def perform(id, key)
    #   dog = dog.find(id)
    #   dog.key = key
    #   dog.remote_image_url = dog.image.direct_fog_url(with_path: true)
    #   dog.save!
    #   dog.update_column(:image_processed, true)
    # end
  end
end
