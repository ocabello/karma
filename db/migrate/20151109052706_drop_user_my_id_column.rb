class DropUserMyIdColumn < ActiveRecord::Migration
  def up
    remove_column :posts, :usermyid
  end
  
  def down
    fail ActiveRecord::IrreversibleMigration
  end

end
