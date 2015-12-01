class Post < ActiveRecord::Base

    belongs_to :user
    validates :title, format: { with: /\A[a-zA-Z0-9 .!?"-]+\z/,
    message: "Error: regular expressions only" }
    validates :description, format: { with: /\A[a-zA-Z0-9 .!?"-]+\z/,
    message: "Error: regular expressions only" }
    
end
