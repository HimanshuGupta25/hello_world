class DropResearch < ActiveRecord::Migration
def up
  drop_table :research
end

def down
  raise ActiveRecord::IrreversibleMigration
end
end
