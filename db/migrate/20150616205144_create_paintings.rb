class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :image
      t.integer :gallery_id
      t.text :name
      t.string :remote_image_url

      t.timestamps null: false
    end
  end
end
