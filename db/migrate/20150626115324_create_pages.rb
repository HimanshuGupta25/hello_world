class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :title
      t.string :contents

      t.timestamps null: false
    end
  end
end
