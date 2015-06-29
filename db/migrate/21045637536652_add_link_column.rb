class AddLinkColumn < ActiveRecord::Migration
  def change
    add_column :entries, :link, :string
  end
end