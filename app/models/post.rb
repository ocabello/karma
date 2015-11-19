class Post < ActiveRecord::Base
    attr_accessor :current_user_name
    attr_accessor :poster_name
    belongs_to :user
    validates_presence_of :title
    validates_presence_of :description
    
end
