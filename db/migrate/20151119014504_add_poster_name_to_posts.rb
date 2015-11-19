class AddPosterNameToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :posterName, :string
  end
end
