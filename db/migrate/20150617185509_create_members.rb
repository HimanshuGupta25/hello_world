class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :image
      t.text :name
      t.string :description

      t.timestamps null: false
    end
  end
end
