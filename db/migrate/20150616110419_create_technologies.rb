class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :title
      t.date :date
      t.text :contents

      t.timestamps null: false
    end
  end
end
