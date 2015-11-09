class AddTestIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :usermyid, :string
  end
end
