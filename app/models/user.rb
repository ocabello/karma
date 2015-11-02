class User < ActiveRecord::Base
    attr_accessible :name, :email, :points, :testId, :post
    has_many :posts
end
