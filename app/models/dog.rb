class Dog < ActiveRecord::Base
  belongs_to :park
  belongs_to :user

  has_many :comments
end
