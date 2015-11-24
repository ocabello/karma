class RemovePostedByFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :postedBy, :string
  end
end
