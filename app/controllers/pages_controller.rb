class PagesController < ApplicationController
  def home
  end
  
  def signup
    @user=UserInfo.new(user_params)
  end
  
  private
  def user_params
    params.require(:user).permit(:firstName)
  end
  def feed
  end
  def createPost
  end
end
