class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :postedBy

      t.timestamps null: false
    end
  end
end
