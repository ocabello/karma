class Post < ActiveRecord::Base

    belongs_to :user
    validates :title, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    validates :description, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    
end
