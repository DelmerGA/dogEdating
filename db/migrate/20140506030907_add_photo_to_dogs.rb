class AddPhotoToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :photo, :string
  end
end
