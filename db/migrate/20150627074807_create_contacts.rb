class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :title
      t.string :address
      t.integer :phone
      t.string :email
      t.string :web
      t.string :contents

      t.timestamps null: false
    end
  end
end
