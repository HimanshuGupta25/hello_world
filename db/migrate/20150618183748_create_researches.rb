class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.text :name
      t.string :contents
      t.string :main_contents

      t.timestamps null: false
    end
  end
end
