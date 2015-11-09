class DropMyIdColumn < ActiveRecord::Migration
  def up
    remove_column :users, :myid
  end
  
  def down
    fail ActiveRecord::IrreversibleMigration
  end

end
