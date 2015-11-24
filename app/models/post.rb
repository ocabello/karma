class Post < ActiveRecord::Base

    belongs_to :user
    validates :title, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    validates_presence_of :description, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    
end
