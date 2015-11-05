class AddTestIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :myid, :text
  end
end
