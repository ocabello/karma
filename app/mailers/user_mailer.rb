class UserMailer < ApplicationMailer
    
    default from: 'notificationskarma@gmail.com'

    def request_email( user)
        @user = user
       # @post = User.find(Post.user_id)
        mail(to: user.email, subject: 'Good News: Help is on its Way!')
    end
end