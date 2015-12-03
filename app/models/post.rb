class Post < ActiveRecord::Base

    belongs_to :user
    validates :title, presence: true, length: {maximum: 100}
    validates :description, presence: true, length: {maximum: 300}

    
    
    def self.search(search)
      if search
        where("title LIKE ?", "%#{search}%") 
        #find(:all, :conditions => ['title ILIKE ?', "%#{search}%"])
      else
        find(:all)
      end
    end


end
