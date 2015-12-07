class UserMailer < ApplicationMailer
    
    default from: 'notificationskarma@gmail.com'

    def request_email(post, user)
        @user = user
        @post = post
        @current_user = User.find(Rails.application.config.current_user.id)
        @email_current_user = @current_user.email
        @name_current_user = @current_user.name
        mail(to: user.email, subject: 'Good News: Help is on its Way!')
    end
    
    def confirmation_email(post, user)
        @user = user
        @post = post
        @receiver = User.find(@post.user_id)
        mail(to: user.email, subject: 'You Have Made A Difference Today!')
    end
end