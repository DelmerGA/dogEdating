class AddImageToParks < ActiveRecord::Migration
  def change
    add_column :parks, :image, :text
  end
end
