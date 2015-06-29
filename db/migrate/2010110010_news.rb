
class News < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.date :date
      t.text :contents

      t.timestamps null: false
    end
  end
end