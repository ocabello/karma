class Post < ActiveRecord::Base
    attr_accessible :title, :description, :postedBy, :user
    belongs_to :user
end
