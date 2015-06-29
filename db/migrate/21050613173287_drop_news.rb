class DropNews < ActiveRecord::Migration
def up
  drop_table :news
end

def down
  raise ActiveRecord::IrreversibleMigration
end
end
