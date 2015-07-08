class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :url
      t.string :content
      t.timestamps null: false
    end
  end
end
