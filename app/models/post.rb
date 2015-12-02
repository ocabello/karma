class Post < ActiveRecord::Base

    belongs_to :user
    validates :title, format: { with: /\A[a-zA-Z0-9 .!?"-]+\z/,
    message: "Error: regular expressions only" }
    validates :description, format: { with: /\A[a-zA-Z0-9 .!?"-]+\z/,
    message: "Error: regular expressions only" }
    
    
    def self.search(search)
      if search
        where("title LIKE ?", "%#{search}%") 
        #find(:all, :conditions => ['title ILIKE ?', "%#{search}%"])
      else
        find(:all)
      end
    end


end
