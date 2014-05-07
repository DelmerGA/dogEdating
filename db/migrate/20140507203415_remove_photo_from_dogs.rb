class RemovePhotoFromDogs < ActiveRecord::Migration
  def change
    remove_column :dogs, :photo, :string
  end
end
