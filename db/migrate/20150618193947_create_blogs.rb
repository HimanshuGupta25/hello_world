class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :title
      t.string :short_contents
      t.string :main_contents
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
