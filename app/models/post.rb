class Post < ActiveRecord::Base
    attr_accessor :current_user_name
    attr_accessor :poster_name
    belongs_to :user
end
