class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :_Researches
      t.string :title
      t.date :date
      t.text :contents
      t.text :main_contents

      t.timestamps null: false
    end
  end
end
