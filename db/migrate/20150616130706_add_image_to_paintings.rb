class AddImageToPaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :image
      t.timestamps null: false
    end
    end
end
