class User < ActiveRecord::Base
    has_many :posts
    # before_save { self.email = email.downcase }
    # validates :name,  presence: true, length: { maximum: 50 }
    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    # validates :email, presence: true, length: { maximum: 255 },
    #                 format: { with: VALID_EMAIL_REGEX },
    #                 uniqueness: { case_sensitive: false }
    # has_secure_password
    # validates :password, presence: true, length: { minimum: 6 }

    # # Returns the hash digest of the given string.
    # def User.digest(string)
    #     cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
    #                                               BCrypt::Engine.cost
    #     BCrypt::Password.create(string, cost: cost)
    # end
    
    def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
      end
      if auth['credentials']
        user.token = auth['credentials']['token'] || ""
        user.expires_at = Time.at(auth['credentials']['expires_at']) 
      end
    end
    end
end
