class Post < ActiveRecord::Base

    belongs_to :user
<<<<<<< HEAD
    validates :title, :presence => true, length: { maximum: 100 }
    validates :description, :presence => true, length: { maximum: 300 }
=======
    validates :title, presence: true, length: {maximum: 100}
    validates :description, presence: true, length: {maximum: 300}

    
>>>>>>> ef674d44b138436af8166f7b78db6073ddcb0645
    
    def self.search(search)
      if search
        where("title LIKE ?", "%#{search}%") 
        #find(:all, :conditions => ['title ILIKE ?', "%#{search}%"])
      else
        find(:all)
      end
    end


end
