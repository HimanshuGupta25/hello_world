class AddColumnUrl < ActiveRecord::Migration
  def change
    add_column :galleries, :url, :string
  end
end