class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :title
      t.string :image
      t.string :short_contents
      t.string :main_contents
      t.timestamps null: false
    end
  end
end
