class AddNewGalleryContent < ActiveRecord::Migration
  def change
    add_column :galleries, :content, :string
  end
end