class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :image
      t.text :name
      t.string :description

      t.timestamps null: false
    end
  end
end
