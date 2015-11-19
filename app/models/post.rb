class Post < ActiveRecord::Base
    attr_accessor :current_user_name
    attr_accessor :poster_name
    belongs_to :user
    validates :title, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    validates_presence_of :description, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    
end
