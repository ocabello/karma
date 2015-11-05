class DropUserInfos < ActiveRecord::Migration
  def up
    drop_table :user_infos
  end
  
  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
