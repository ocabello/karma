class RemovePosterNameFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :posterName, :string
  end
end
