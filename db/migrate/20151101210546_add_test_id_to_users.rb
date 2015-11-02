class AddTestIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :testId, :integer
  end
end
